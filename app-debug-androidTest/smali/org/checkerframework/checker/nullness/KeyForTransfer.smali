.class public Lorg/checkerframework/checker/nullness/KeyForTransfer;
.super Lorg/checkerframework/framework/flow/CFAbstractTransfer;
.source "KeyForTransfer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractTransfer<",
        "Lorg/checkerframework/checker/nullness/KeyForValue;",
        "Lorg/checkerframework/checker/nullness/KeyForStore;",
        "Lorg/checkerframework/checker/nullness/KeyForTransfer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/nullness/KeyForAnalysis;)V
    .locals 0
    .param p1, "analysis"    # Lorg/checkerframework/checker/nullness/KeyForAnalysis;

    .line 23
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 24
    return-void
.end method

.method private getKeys(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Set;
    .locals 4
    .param p1, "keyFor"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    const-class v1, Ljava/lang/String;

    .line 78
    const-string v2, "value"

    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 77
    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/KeyForTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 11
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/checker/nullness/KeyForValue;",
            "Lorg/checkerframework/checker/nullness/KeyForStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/checker/nullness/KeyForValue;",
            "Lorg/checkerframework/checker/nullness/KeyForStore;",
            ">;"
        }
    .end annotation

    .line 37
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/checker/nullness/KeyForValue;Lorg/checkerframework/checker/nullness/KeyForStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 38
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/checker/nullness/KeyForValue;Lorg/checkerframework/checker/nullness/KeyForStore;>;"
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/KeyForTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;

    .line 39
    .local v1, "factory":Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;
    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->isMapContainsKey(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->isMapPut(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    .line 42
    .local v2, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-static {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 43
    .local v3, "internalReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "mapName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    .line 46
    .local v6, "keyReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 47
    .local v7, "keyForMaps":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {v7, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1, v5}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/checker/nullness/KeyForValue;

    .line 50
    .local v5, "previousKeyValue":Lorg/checkerframework/checker/nullness/KeyForValue;
    if-eqz v5, :cond_2

    .line 51
    invoke-virtual {v5}, Lorg/checkerframework/checker/nullness/KeyForValue;->getAnnotations()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/element/AnnotationMirror;

    .line 52
    .local v9, "prevAm":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v9, :cond_1

    const-class v10, Lorg/checkerframework/checker/nullness/qual/KeyFor;

    invoke-virtual {v1, v9, v10}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 53
    invoke-direct {p0, v9}, Lorg/checkerframework/checker/nullness/KeyForTransfer;->getKeys(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 55
    .end local v9    # "prevAm":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v1, v7}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->createKeyForAnnotationMirrorWithValue(Ljava/util/LinkedHashSet;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 60
    .local v8, "am":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;->isMapContainsKey(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 61
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/checker/nullness/KeyForStore;

    invoke-virtual {v9, v6, v8}, Lorg/checkerframework/checker/nullness/KeyForStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/checker/nullness/KeyForStore;

    invoke-virtual {v9, v6, v8}, Lorg/checkerframework/checker/nullness/KeyForStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 64
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/checker/nullness/KeyForStore;

    invoke-virtual {v9, v6, v8}, Lorg/checkerframework/checker/nullness/KeyForStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 68
    .end local v2    # "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v3    # "internalReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v4    # "mapName":Ljava/lang/String;
    .end local v5    # "previousKeyValue":Lorg/checkerframework/checker/nullness/KeyForValue;
    .end local v6    # "keyReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v7    # "keyForMaps":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v8    # "am":Ljavax/lang/model/element/AnnotationMirror;
    :cond_4
    :goto_1
    return-object v0
.end method
