.class public Lorg/checkerframework/checker/index/searchindex/SearchIndexTransfer;
.super Lorg/checkerframework/checker/index/IndexAbstractTransfer;
.source "SearchIndexTransfer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private aTypeFactory:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V
    .locals 1
    .param p1, "analysis"    # Lorg/checkerframework/framework/flow/CFAnalysis;

    .line 28
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/IndexAbstractTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V

    .line 29
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    iput-object v0, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    .line 30
    return-void
.end method

.method private refineSearchIndexToNegativeIndexFor(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;I)V
    .locals 5
    .param p1, "left"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "right"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p4, "valueToCompareTo"    # I

    .line 57
    if-eqz p4, :cond_1

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_1
    :goto_0
    nop

    .line 60
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v0

    .line 61
    .local v0, "leftValue":Ljava/lang/Long;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    int-to-long v3, p4

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 62
    iget-object v1, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    .line 63
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    const-class v3, Lorg/checkerframework/checker/index/qual/SearchIndexFor;

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->getAnnotationMirror(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 64
    .local v1, "rightSI":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_2

    .line 65
    nop

    .line 66
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    .line 67
    .local v2, "arrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/searchindex/SearchIndexAnnotatedTypeFactory;->createNegativeIndexFor(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 68
    .local v3, "nif":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/index/searchindex/SearchIndexTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 69
    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 68
    invoke-virtual {p3, v4, v3}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 72
    .end local v1    # "rightSI":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "arrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "nif":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    return-void
.end method


# virtual methods
.method protected refineGT(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V
    .locals 1
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

    .line 82
    .local p6, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p5, v0}, Lorg/checkerframework/checker/index/searchindex/SearchIndexTransfer;->refineSearchIndexToNegativeIndexFor(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;I)V

    .line 83
    return-void
.end method

.method protected refineGTE(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/dataflow/analysis/TransferInput;)V
    .locals 1
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

    .line 93
    .local p6, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p3, p5, v0}, Lorg/checkerframework/checker/index/searchindex/SearchIndexTransfer;->refineSearchIndexToNegativeIndexFor(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;I)V

    .line 94
    return-void
.end method
