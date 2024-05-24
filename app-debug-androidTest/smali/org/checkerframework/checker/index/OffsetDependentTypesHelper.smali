.class public Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;
.super Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
.source "OffsetDependentTypesHelper.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 23
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 24
    return-void
.end method


# virtual methods
.method public createDependentTypesTreeAnnotator(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 78
    new-instance v0, Lorg/checkerframework/checker/index/OffsetDependentTypesHelper$1;

    invoke-direct {v0, p0, p1, p0}, Lorg/checkerframework/checker/index/OffsetDependentTypesHelper$1;-><init>(Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)V

    return-object v0
.end method

.method protected standardizeString(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Ljava/lang/String;
    .locals 3
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p3, "localScope"    # Lcom/sun/source/util/TreePath;
    .param p4, "useLocalScope"    # Z

    .line 32
    invoke-static {p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->isExpressionError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    return-object p1

    .line 35
    :cond_0
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 39
    nop

    .line 40
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    nop

    .line 45
    if-nez v0, :cond_1

    .line 46
    new-instance v1, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    const-string v2, " "

    invoke-direct {v1, p1, v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 48
    :cond_1
    instance-of v1, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 49
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 51
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, "constant":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 56
    .end local v1    # "constant":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 42
    .end local v0    # "result":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    new-instance v1, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    invoke-direct {v1, p1, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;-><init>(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;)V

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 61
    .end local v0    # "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    :cond_3
    invoke-static {p1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromJavaExpression(Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    .line 62
    .local v0, "equation":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getError()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 67
    :cond_4
    :try_start_1
    iget-object v1, p0, Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p2, p3, p4, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->standardizeAndViewpointAdaptExpressions(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;ZLorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    :try_end_1
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    nop

    .line 73
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 69
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    new-instance v2, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    invoke-direct {v2, p1, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;-><init>(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;)V

    invoke-virtual {v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
