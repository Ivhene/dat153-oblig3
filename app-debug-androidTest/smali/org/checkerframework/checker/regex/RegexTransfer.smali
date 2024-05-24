.class public Lorg/checkerframework/checker/regex/RegexTransfer;
.super Lorg/checkerframework/framework/flow/CFTransfer;
.source "RegexTransfer.java"


# static fields
.field private static final AS_REGEX_METHOD_NAME:Ljava/lang/String; = "asRegex"

.field private static final IS_REGEX_METHOD_NAME:Ljava/lang/String; = "isRegex"


# instance fields
.field private final matchResultgroupCount:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/framework/flow/CFTransfer;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFTransfer;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 45
    nop

    .line 50
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 46
    const-string v1, "java.util.regex.MatchResult"

    const-string v2, "groupCount"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/regex/RegexTransfer;->matchResultgroupCount:Ljavax/lang/model/element/ExecutableElement;

    .line 51
    return-void
.end method

.method private handleMatcherGroupCount(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferResult;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 10
    .param p1, "possibleMatcher"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "possibleConstant"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "isAlsoEqual"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Z",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 184
    .local p4, "resultIn":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    if-nez v0, :cond_0

    .line 185
    return-object p4

    .line 187
    :cond_0
    instance-of v0, p2, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    if-nez v0, :cond_1

    .line 188
    return-object p4

    .line 191
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexTransfer;->matchResultgroupCount:Ljavax/lang/model/element/ExecutableElement;

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 194
    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    .line 191
    invoke-static {p1, v0, v1}, Lorg/checkerframework/dataflow/util/NodeUtils;->isMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    return-object p4

    .line 198
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v0

    .line 199
    .local v0, "methodAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 201
    .local v1, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v2, p0, Lorg/checkerframework/checker/regex/RegexTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 202
    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    .line 204
    .local v2, "matcherReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    move-object v3, p2

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    .line 206
    .local v3, "iln":Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;
    if-eqz p3, :cond_3

    .line 207
    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;->getValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "groupCount":I
    goto :goto_0

    .line 209
    .end local v4    # "groupCount":I
    :cond_3
    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;->getValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 212
    .restart local v4    # "groupCount":I
    :goto_0
    invoke-virtual {p4}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFStore;

    .line 213
    .local v5, "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {v5}, Lorg/checkerframework/framework/flow/CFStore;->copy()Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/flow/CFStore;

    .line 214
    .local v6, "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    new-instance v7, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 215
    invoke-virtual {p4}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {v7, v8, v5, v6}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    .line 216
    .local v7, "newResult":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v8, p0, Lorg/checkerframework/checker/regex/RegexTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v8}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 218
    .local v8, "factory":Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;
    invoke-virtual {v8, v4}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->createRegexAnnotation(I)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v9

    .line 219
    .local v9, "regexAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v5, v2, v9}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 221
    return-object v7
.end method

.method private handleRegexUtil(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/dataflow/analysis/TransferResult;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 8
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 79
    .local p3, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 80
    .local v0, "factory":Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "isRegex"

    invoke-static {p2, v3, v2}, Lorg/checkerframework/javacutil/ElementUtils;->matchesElement(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    .line 86
    .local v1, "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFStore;->copy()Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFStore;

    .line 87
    .local v2, "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    new-instance v3, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 88
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {v3, v6, v1, v2}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    .line 89
    .local v3, "newResult":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 91
    invoke-virtual {v0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/checkerframework/framework/util/CFContext;->getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;

    move-result-object v6

    invoke-virtual {p1, v4}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    .line 90
    invoke-static {v6, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 95
    .local v4, "firstParam":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p1, v5}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 97
    .local v5, "count":Lorg/checkerframework/dataflow/cfg/node/Node;
    instance-of v6, v5, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    if-eqz v6, :cond_0

    .line 98
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    .line 99
    .local v6, "iln":Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;->getValue()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 100
    .local v6, "groupCount":I
    goto :goto_0

    .line 101
    .end local v6    # "groupCount":I
    :cond_0
    const/4 v6, 0x0

    .line 103
    .restart local v6    # "groupCount":I
    :goto_0
    invoke-virtual {v0, v6}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->createRegexAnnotation(I)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 104
    .local v7, "regexAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1, v4, v7}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 105
    return-object v3

    .line 106
    .end local v1    # "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    .end local v2    # "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    .end local v3    # "newResult":Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;, "Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    .end local v4    # "firstParam":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v5    # "count":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v6    # "groupCount":I
    .end local v7    # "regexAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-string v2, "asRegex"

    invoke-static {p2, v2, v1}, Lorg/checkerframework/javacutil/ElementUtils;->matchesElement(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {p1, v5}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 117
    .local v1, "count":Lorg/checkerframework/dataflow/cfg/node/Node;
    instance-of v2, v1, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    if-eqz v2, :cond_2

    .line 118
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;

    .line 119
    .local v2, "iln":Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;->getValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 120
    .local v2, "groupCount":I
    goto :goto_1

    .line 121
    .end local v2    # "groupCount":I
    :cond_2
    const/4 v2, 0x0

    .line 123
    .restart local v2    # "groupCount":I
    :goto_1
    invoke-virtual {v0, v2}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->createRegexAnnotation(I)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 125
    .local v3, "regexAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/regex/RegexTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 127
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v5}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 126
    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    .line 128
    .local v4, "newResultValue":Lorg/checkerframework/framework/flow/CFValue;
    new-instance v5, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p3}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {v5, v4, v6}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v5

    .line 130
    .end local v1    # "count":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v2    # "groupCount":I
    .end local v3    # "regexAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "newResultValue":Lorg/checkerframework/framework/flow/CFValue;
    :cond_3
    return-object p3
.end method

.method private isRegexUtil(Ljava/lang/String;)Z
    .locals 1
    .param p1, "receiver"    # Ljava/lang/String;

    .line 230
    const-string v0, "RegexUtil"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".RegexUtil"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public bridge synthetic visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/regex/RegexTransfer;->visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;",
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

    .line 155
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 156
    .local v0, "res":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/checkerframework/checker/regex/RegexTransfer;->handleMatcherGroupCount(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferResult;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/regex/RegexTransfer;->visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;",
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

    .line 164
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 165
    .local v0, "res":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/checkerframework/checker/regex/RegexTransfer;->handleMatcherGroupCount(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferResult;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/regex/RegexTransfer;->visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LessThanNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LessThanNode;",
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

    .line 138
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 139
    .local v0, "res":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/checkerframework/checker/regex/RegexTransfer;->handleMatcherGroupCount(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferResult;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/regex/RegexTransfer;->visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;",
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

    .line 147
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 148
    .local v0, "res":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/checkerframework/checker/regex/RegexTransfer;->handleMatcherGroupCount(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferResult;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/regex/RegexTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
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

    .line 59
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 62
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v1

    .line 63
    .local v1, "target":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 64
    .local v2, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 65
    .local v3, "receiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    instance-of v4, v3, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;

    if-eqz v4, :cond_0

    .line 66
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;

    .line 67
    .local v4, "cnn":Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;
    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "receiverName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/checkerframework/checker/regex/RegexTransfer;->isRegexUtil(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    invoke-direct {p0, p1, v2, v0}, Lorg/checkerframework/checker/regex/RegexTransfer;->handleRegexUtil(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/dataflow/analysis/TransferResult;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 72
    .end local v4    # "cnn":Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;
    .end local v5    # "receiverName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
