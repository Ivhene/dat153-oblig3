.class public Lorg/checkerframework/checker/index/inequality/LessThanTransfer;
.super Lorg/checkerframework/checker/index/IndexAbstractTransfer;
.source "LessThanTransfer.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V
    .locals 0
    .param p1, "analysis"    # Lorg/checkerframework/framework/flow/CFAnalysis;

    .line 39
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V

    .line 40
    return-void
.end method

.method private getLessThanExpressions(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 134
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 135
    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    .line 136
    .local v1, "factory":Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    nop

    .line 138
    invoke-virtual {v1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v2

    iget-object v3, v1, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v2, v0, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 137
    invoke-static {v2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 140
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private isDoubleOrFloatLiteral(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 3
    .param p1, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 149
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v2, :cond_0

    .line 151
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 150
    :cond_1
    return v1

    .line 153
    :cond_2
    return v1
.end method


# virtual methods
.method protected refineGT(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V
    .locals 5
    .param p1, "left"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "leftAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "right"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "rightAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p5, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p6, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 52
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    .line 55
    .local v0, "factory":Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;
    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 56
    .local v1, "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->isUnassignableByOtherCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    nop

    .line 58
    invoke-static {p4}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    .line 59
    .local v2, "lessThanExpressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->isDoubleOrFloatLiteral(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v3

    invoke-static {v3, p3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 67
    .local v3, "rightRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v0, v2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->createLessThanQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p5, v3, v4}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 69
    .end local v2    # "lessThanExpressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "rightRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_2
    return-void
.end method

.method protected refineGTE(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V
    .locals 5
    .param p1, "left"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "leftAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "right"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "rightAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p5, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p6, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 84
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    .line 87
    .local v0, "factory":Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;
    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 88
    .local v1, "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->isUnassignableByOtherCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    nop

    .line 90
    invoke-static {p4}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "lessThanExpressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->isDoubleOrFloatLiteral(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v3

    invoke-static {v3, p3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 99
    .local v3, "rightRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v0, v2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->createLessThanQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p5, v3, v4}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 101
    .end local v2    # "lessThanExpressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "rightRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_2
    return-void
.end method

.method public bridge synthetic visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 10
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 107
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 108
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    .line 109
    .local v0, "factory":Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 110
    .local v1, "leftRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->isUnassignableByOtherCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v2

    .line 112
    .local v2, "valueFactory":Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getMinValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v3

    .line 113
    .local v3, "right":Ljava/lang/Long;
    if-eqz v3, :cond_2

    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 115
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->getLessThanExpressions(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v4

    .line 116
    .local v4, "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_0

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 119
    :cond_0
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->isDoubleOrFloatLiteral(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    invoke-virtual {v0, v4}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->createLessThanQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 123
    .local v5, "refine":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v6, p0, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/flow/CFValue;

    .line 124
    .local v6, "value":Lorg/checkerframework/framework/flow/CFValue;
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/flow/CFStore;

    .line 125
    .local v7, "info":Lorg/checkerframework/framework/flow/CFStore;
    new-instance v8, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v6, v7}, Lorg/checkerframework/checker/index/inequality/LessThanTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {v8, v9, v7}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v8

    .line 128
    .end local v2    # "valueFactory":Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .end local v3    # "right":Ljava/lang/Long;
    .end local v4    # "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "refine":Ljavax/lang/model/element/AnnotationMirror;
    .end local v6    # "value":Lorg/checkerframework/framework/flow/CFValue;
    .end local v7    # "info":Lorg/checkerframework/framework/flow/CFStore;
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;->visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/TransferResult;

    return-object v2
.end method
