.class public Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;
.super Ljava/lang/Object;
.source "ListRemovalChange.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;


# instance fields
.field private final index:I

.field private final observableProperty:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;I)V
    .locals 0
    .param p1, "observableProperty"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "observableProperty",
            "index"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->observableProperty:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 16
    iput p2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->index:I

    .line 17
    return-void
.end method


# virtual methods
.method public getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;
    .locals 5
    .param p1, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "node"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->observableProperty:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    if-ne p1, v0, :cond_1

    .line 22
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    .line 23
    .local v0, "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;->getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, "currentRawValue":Ljava/lang/Object;
    instance-of v2, v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v2, :cond_0

    .line 27
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 29
    .local v2, "currentNodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<*>;"
    invoke-virtual {v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 30
    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->addAll(Ljava/util/Collection;)Z

    .line 31
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->index:I

    invoke-virtual {v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 32
    return-object v0

    .line 25
    .end local v2    # "currentNodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<*>;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected NodeList, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    .end local v0    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    .end local v1    # "currentRawValue":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;->getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
