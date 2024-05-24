.class public Lorg/checkerframework/checker/i18nformatter/I18nFormatterTransfer;
.super Lorg/checkerframework/framework/flow/CFTransfer;
.source "I18nFormatterTransfer.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V
    .locals 0
    .param p1, "analysis"    # Lorg/checkerframework/framework/flow/CFAnalysis;

    .line 24
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 10
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
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

    .line 30
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 31
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    .line 32
    .local v0, "atypeFactory":Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v1

    .line 33
    .local v1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v2, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 36
    .local v2, "tu":Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;
    invoke-virtual {v2, p1, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->isHasFormatCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFStore;

    .line 38
    .local v3, "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFStore;->copy()Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFStore;

    .line 39
    .local v5, "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    new-instance v6, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 40
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {v6, v7, v3, v5}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    .line 41
    .local v6, "newResult":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->getHasFormatCallCategories(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    move-result-object v7

    .line 42
    .local v7, "cats":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;>;"
    invoke-virtual {v7}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 43
    const-string v8, "i18nformat.indirect.arguments"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v8, v4}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_0
    nop

    .line 46
    invoke-virtual {p1, v4}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 47
    .local v4, "firstParam":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v8, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 48
    invoke-virtual {v7}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-virtual {v8, v9}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->categoriesToFormatAnnotation([Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 49
    .local v8, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v3, v4, v8}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 51
    .end local v4    # "firstParam":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v8    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    return-object v6

    .line 55
    .end local v3    # "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    .end local v5    # "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    .end local v6    # "newResult":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    .end local v7    # "cats":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;>;"
    :cond_1
    invoke-virtual {v2, p1, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->isIsFormatCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFStore;

    .line 57
    .restart local v3    # "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFStore;->copy()Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFStore;

    .line 58
    .restart local v5    # "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    new-instance v6, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 59
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {v6, v7, v3, v5}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    .line 60
    .restart local v6    # "newResult":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1, v4}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 61
    .restart local v4    # "firstParam":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v7, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v8, v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v9, Lorg/checkerframework/checker/i18nformatter/qual/I18nInvalidFormat;

    .line 63
    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 65
    .local v7, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v8, "value"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 66
    invoke-virtual {v7}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 67
    return-object v6

    .line 74
    .end local v3    # "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    .end local v4    # "firstParam":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v5    # "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    .end local v6    # "newResult":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    .end local v7    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_2
    invoke-virtual {v2, p1, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->isMakeFormatCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    invoke-virtual {v2, p1, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->makeFormatCallCategories(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    move-result-object v3

    .line 76
    .local v3, "cats":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;>;"
    invoke-virtual {v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 77
    const-string v5, "i18nformat.key.not.found"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5, v4}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    :cond_3
    iget-object v4, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 80
    invoke-virtual {v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->categoriesToFormatAnnotation([Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 81
    .local v4, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v5, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 83
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v6}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 82
    invoke-virtual {v5, v4, v6}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFValue;

    .line 84
    .local v5, "newResultValue":Lorg/checkerframework/framework/flow/CFValue;
    new-instance v6, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {v6, v5, v7}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v6

    .line 88
    .end local v3    # "cats":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;>;"
    .end local v4    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "newResultValue":Lorg/checkerframework/framework/flow/CFValue;
    :cond_4
    :goto_1
    return-object v1
.end method
