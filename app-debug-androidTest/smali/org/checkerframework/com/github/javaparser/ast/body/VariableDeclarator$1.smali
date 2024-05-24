.class Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator$1;
.super Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserverAdapter;
.source "VariableDeclarator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->customInitialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator$1;->this$0:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserverAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
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

    .line 117
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    if-ne p2, v0, :cond_2

    .line 118
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator$1;->this$0:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 119
    .local v0, "vd":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;

    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;

    .line 122
    .local v1, "nodeWithVariables":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables<*>;"
    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object v2

    .line 123
    .local v2, "currentMaxCommonType":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 124
    .local v3, "types":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 125
    .local v4, "index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 126
    if-ne v5, v4, :cond_0

    .line 127
    move-object v6, p4

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_0
    invoke-interface {v1, v5}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariable(I)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    .end local v5    # "i":I
    :cond_1
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->calculateMaximumCommonType(Ljava/util/List;)Ljava/util/Optional;

    move-result-object v5

    .line 133
    .local v5, "newMaxCommonType":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    move-object v6, v1

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/Node;

    sget-object v7, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MAXIMUM_COMMON_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v9, v8}, Lorg/checkerframework/com/github/javaparser/ast/Node;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .end local v0    # "vd":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .end local v1    # "nodeWithVariables":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables<*>;"
    .end local v2    # "currentMaxCommonType":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    .end local v3    # "types":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    .end local v4    # "index":I
    .end local v5    # "newMaxCommonType":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    :cond_2
    return-void
.end method
