.class public Lorg/checkerframework/checker/index/Subsequence;
.super Ljava/lang/Object;
.source "Subsequence.java"


# instance fields
.field public final array:Ljava/lang/String;

.field public final from:Ljava/lang/String;

.field public final to:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "array"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/checkerframework/checker/index/Subsequence;->from:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lorg/checkerframework/checker/index/Subsequence;->to:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private static createSubsequence(Ljavax/lang/model/element/AnnotationMirror;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/checker/index/Subsequence;
    .locals 5
    .param p0, "hasSub"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "currentPath"    # Lcom/sun/source/util/TreePath;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    const-string v0, "from"

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "from":Ljava/lang/String;
    const-string v1, "to"

    const-class v3, Ljava/lang/String;

    invoke-static {p0, v1, v3, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, "to":Ljava/lang/String;
    const-string v3, "subsequence"

    const-class v4, Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, "array":Ljava/lang/String;
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 73
    invoke-static {v0, p1, p2}, Lorg/checkerframework/checker/index/Subsequence;->standardizeAndViewpointAdapt(Ljava/lang/String;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v1, p1, p2}, Lorg/checkerframework/checker/index/Subsequence;->standardizeAndViewpointAdapt(Ljava/lang/String;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v2, p1, p2}, Lorg/checkerframework/checker/index/Subsequence;->standardizeAndViewpointAdapt(Ljava/lang/String;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljava/lang/String;

    move-result-object v2

    .line 78
    :cond_1
    new-instance v3, Lorg/checkerframework/checker/index/Subsequence;

    invoke-direct {v3, v2, v0, v1}, Lorg/checkerframework/checker/index/Subsequence;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getContextFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .locals 4
    .param p0, "rec"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p1, "checker"    # Lorg/checkerframework/framework/util/BaseContext;

    .line 131
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 132
    return-object v0

    .line 134
    :cond_0
    instance-of v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v1, :cond_1

    .line 135
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 136
    .local v1, "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    new-instance v2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 137
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 136
    return-object v2

    .line 140
    .end local v1    # "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    :cond_1
    return-object v0
.end method

.method public static getSubsequenceFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/checker/index/Subsequence;
    .locals 2
    .param p0, "rec"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "currentPath"    # Lcom/sun/source/util/TreePath;
    .param p3, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 96
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 97
    return-object v0

    .line 101
    :cond_0
    instance-of v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v1, :cond_1

    .line 102
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    .line 106
    .local v0, "element":Ljavax/lang/model/element/Element;
    const-class v1, Lorg/checkerframework/checker/index/qual/HasSubsequence;

    .line 107
    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 106
    invoke-static {v1, p2, p3}, Lorg/checkerframework/checker/index/Subsequence;->createSubsequence(Ljavax/lang/model/element/AnnotationMirror;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/checker/index/Subsequence;

    move-result-object v1

    return-object v1

    .line 104
    .end local v0    # "element":Ljavax/lang/model/element/Element;
    :cond_1
    return-object v0
.end method

.method public static getSubsequenceFromTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/checker/index/Subsequence;
    .locals 3
    .param p0, "varTree"    # Lcom/sun/source/tree/Tree;
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 48
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 49
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    .line 50
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    .line 51
    return-object v2

    .line 54
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 55
    .local v0, "element":Ljavax/lang/model/element/Element;
    const-class v1, Lorg/checkerframework/checker/index/qual/HasSubsequence;

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 56
    .local v1, "hasSub":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1, v2, v2}, Lorg/checkerframework/checker/index/Subsequence;->createSubsequence(Ljavax/lang/model/element/AnnotationMirror;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/checker/index/Subsequence;

    move-result-object v2

    return-object v2
.end method

.method public static negateString(Ljava/lang/String;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "currentPath"    # Lcom/sun/source/util/TreePath;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 155
    invoke-static {p0, p1, p2}, Lorg/checkerframework/checker/index/Subsequence;->standardizeAndViewpointAdapt(Ljava/lang/String;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "original":Ljava/lang/String;
    const-string v1, ""

    .line 157
    .local v1, "result":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x2d

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 162
    .local v4, "c":C
    const/16 v5, 0x2b

    if-ne v4, v3, :cond_1

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 164
    :cond_1
    if-ne v4, v5, :cond_2

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 167
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method private static standardizeAndViewpointAdapt(Ljava/lang/String;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "currentPath"    # Lcom/sun/source/util/TreePath;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 118
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p2, p1, v0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 120
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    :goto_0
    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subsequence(array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/index/Subsequence;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/index/Subsequence;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
