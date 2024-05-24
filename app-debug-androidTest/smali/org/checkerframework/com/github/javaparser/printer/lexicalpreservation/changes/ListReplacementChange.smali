.class public Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;
.super Ljava/lang/Object;
.source "ListReplacementChange.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;


# instance fields
.field private final index:I

.field private final newValue:Lorg/checkerframework/com/github/javaparser/ast/Node;

.field private final observableProperty:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;ILorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0
    .param p1, "observableProperty"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "index"    # I
    .param p3, "newValue"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "observableProperty",
            "index",
            "newValue"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->observableProperty:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 19
    iput p2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->index:I

    .line 20
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->newValue:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 21
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

    .line 25
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->observableProperty:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    if-ne p1, v0, :cond_2

    .line 26
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    .line 27
    .local v0, "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;->getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    .local v1, "currentRawValue":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Optional;

    if-eqz v2, :cond_0

    .line 29
    move-object v2, v1

    check-cast v2, Ljava/util/Optional;

    .line 30
    .local v2, "optional":Ljava/util/Optional;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    .end local v2    # "optional":Ljava/util/Optional;
    :cond_0
    instance-of v2, v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v2, :cond_1

    .line 35
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 36
    .local v2, "currentNodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->addAll(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 37
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->index:I

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/ListReplacementChange;->newValue:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 38
    return-object v0

    .line 33
    .end local v2    # "currentNodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :cond_1
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

    .line 40
    .end local v0    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .end local v1    # "currentRawValue":Ljava/lang/Object;
    :cond_2
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/NoChange;->getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
