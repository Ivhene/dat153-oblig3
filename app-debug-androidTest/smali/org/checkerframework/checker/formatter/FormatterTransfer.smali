.class public Lorg/checkerframework/checker/formatter/FormatterTransfer;
.super Lorg/checkerframework/framework/flow/CFTransfer;
.source "FormatterTransfer.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V
    .locals 0
    .param p1, "analysis"    # Lorg/checkerframework/framework/flow/CFAnalysis;

    .line 18
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/formatter/FormatterTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 8
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

    .line 27
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 28
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    .line 29
    .local v0, "atypeFactory":Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v1

    .line 30
    .local v1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v2, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 32
    .local v2, "tu":Lorg/checkerframework/checker/formatter/FormatterTreeUtil;
    invoke-virtual {v2, p1, v0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->isAsFormatCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->asFormatCallCategories(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;)Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    move-result-object v3

    .line 34
    .local v3, "cats":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;>;"
    invoke-virtual {v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 35
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "format.asformat.indirect.arguments"

    invoke-virtual {v2, v3, v5, v4}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v4, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 38
    invoke-virtual {v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->categoriesToFormatAnnotation([Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 39
    .local v4, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v5, p0, Lorg/checkerframework/checker/formatter/FormatterTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 41
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v6}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 40
    invoke-virtual {v5, v4, v6}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFValue;

    .line 42
    .local v5, "newResultValue":Lorg/checkerframework/framework/flow/CFValue;
    new-instance v6, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {v6, v5, v7}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v6

    .line 46
    .end local v3    # "cats":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;>;"
    .end local v4    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "newResultValue":Lorg/checkerframework/framework/flow/CFValue;
    :cond_1
    :goto_0
    return-object v1
.end method
