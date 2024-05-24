.class public Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "ValueAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ValueTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p2, "factory"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1139
    iput-object p1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1140
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 1141
    return-void
.end method

.method private getCharArrayStringVal(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1290
    .local p1, "initializers":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    const/4 v0, 0x1

    .line 1291
    .local v0, "allLiterals":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1292
    .local v1, "stringVal":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/ExpressionTree;

    .line 1293
    .local v3, "e":Lcom/sun/source/tree/ExpressionTree;
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v5, v5, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    .line 1294
    .local v4, "range":Lorg/checkerframework/common/value/util/Range;
    if-eqz v4, :cond_0

    iget-wide v5, v4, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v7, v4, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 1295
    iget-wide v5, v4, Lorg/checkerframework/common/value/util/Range;->from:J

    long-to-int v5, v5

    int-to-char v5, v5

    .line 1296
    .local v5, "charVal":C
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1297
    .end local v5    # "charVal":C
    nop

    .line 1301
    .end local v3    # "e":Lcom/sun/source/tree/ExpressionTree;
    .end local v4    # "range":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 1298
    .restart local v3    # "e":Lcom/sun/source/tree/ExpressionTree;
    .restart local v4    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_0
    const/4 v0, 0x0

    .line 1299
    nop

    .line 1302
    .end local v3    # "e":Lcom/sun/source/tree/ExpressionTree;
    .end local v4    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_1
    if-eqz v0, :cond_2

    .line 1303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1307
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private getRangeForMathMinMax(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/common/value/util/Range;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 1416
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMethodIdentifier()Lorg/checkerframework/common/value/ValueMethodIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$900(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/common/value/ValueMethodIdentifier;->isMathMin(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1418
    .local v0, "arg1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    invoke-virtual {v2, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1419
    .local v1, "arg2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 1420
    .local v2, "rangeArg1":Lorg/checkerframework/common/value/util/Range;
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 1421
    .local v3, "rangeArg2":Lorg/checkerframework/common/value/util/Range;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1422
    invoke-virtual {v2, v3}, Lorg/checkerframework/common/value/util/Range;->min(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 1424
    .end local v0    # "arg1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "arg2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "rangeArg1":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "rangeArg2":Lorg/checkerframework/common/value/util/Range;
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMethodIdentifier()Lorg/checkerframework/common/value/ValueMethodIdentifier;

    move-result-object v0

    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$1000(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/checkerframework/common/value/ValueMethodIdentifier;->isMathMax(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1425
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1426
    .restart local v0    # "arg1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    invoke-virtual {v2, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 1427
    .restart local v1    # "arg2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 1428
    .restart local v2    # "rangeArg1":Lorg/checkerframework/common/value/util/Range;
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 1429
    .restart local v3    # "rangeArg2":Lorg/checkerframework/common/value/util/Range;
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 1430
    invoke-virtual {v2, v3}, Lorg/checkerframework/common/value/util/Range;->max(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 1424
    .end local v0    # "arg1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "arg2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "rangeArg1":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "rangeArg2":Lorg/checkerframework/common/value/util/Range;
    :cond_1
    nop

    .line 1433
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getValues(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "castTo"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1355
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 1356
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_0

    .line 1361
    const/4 v1, 0x0

    return-object v1

    .line 1363
    :cond_0
    invoke-static {v0, p2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesCastedToType(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private handleDimensions(Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)V
    .locals 4
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            ")V"
        }
    .end annotation

    .line 1189
    .local p1, "dimensions":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1190
    nop

    .line 1191
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 1192
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 1190
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->handleDimensions(Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)V

    .line 1194
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1195
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 1197
    .local v0, "dimType":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1198
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 1200
    :cond_1
    const/4 v1, 0x0

    .line 1201
    .local v1, "rolv":Lorg/checkerframework/common/value/RangeOrListOfValues;
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v2, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1202
    new-instance v2, Lorg/checkerframework/common/value/RangeOrListOfValues;

    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/common/value/RangeOrListOfValues;-><init>(Lorg/checkerframework/common/value/util/Range;)V

    move-object v1, v2

    goto :goto_0

    .line 1203
    :cond_2
    const-string v2, "org.checkerframework.common.value.qual.IntVal"

    invoke-static {v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1204
    new-instance v2, Lorg/checkerframework/common/value/RangeOrListOfValues;

    .line 1206
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/common/value/RangeOrListOfValues;->convertLongsToInts(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/common/value/RangeOrListOfValues;-><init>(Ljava/util/List;)V

    move-object v1, v2

    .line 1208
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 1209
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1210
    invoke-virtual {v1, v2}, Lorg/checkerframework/common/value/RangeOrListOfValues;->createAnnotation(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 1211
    .local v2, "newQual":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1214
    .end local v1    # "rolv":Lorg/checkerframework/common/value/RangeOrListOfValues;
    .end local v2    # "newQual":Ljavax/lang/model/element/AnnotationMirror;
    :cond_4
    :goto_1
    return-void
.end method

.method private handleInitializers(Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)V
    .locals 11
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            ")V"
        }
    .end annotation

    .line 1228
    .local p1, "initializers":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1232
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_0

    .line 1233
    return-void

    .line 1238
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1239
    .local v1, "arrayLenOfDimensions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/common/value/RangeOrListOfValues;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/ExpressionTree;

    .line 1240
    .local v3, "init":Lcom/sun/source/tree/ExpressionTree;
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 1241
    .local v4, "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v5, 0x0

    .line 1242
    .local v5, "dimension":I
    :goto_1
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v6, v7, :cond_6

    .line 1243
    const/4 v6, 0x0

    .line 1244
    .local v6, "rolv":Lorg/checkerframework/common/value/RangeOrListOfValues;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 1245
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Lorg/checkerframework/common/value/RangeOrListOfValues;

    .line 1247
    :cond_1
    const-class v7, Lorg/checkerframework/common/value/qual/ArrayLen;

    invoke-virtual {v4, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 1248
    .local v7, "arrayLen":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v7, :cond_3

    .line 1249
    invoke-static {v7}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v8

    .line 1250
    .local v8, "currentLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_2

    .line 1251
    invoke-virtual {v6, v8}, Lorg/checkerframework/common/value/RangeOrListOfValues;->addAll(Ljava/util/List;)V

    goto :goto_2

    .line 1253
    :cond_2
    new-instance v9, Lorg/checkerframework/common/value/RangeOrListOfValues;

    invoke-direct {v9, v8}, Lorg/checkerframework/common/value/RangeOrListOfValues;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    .end local v8    # "currentLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_2
    goto :goto_4

    .line 1257
    :cond_3
    const-class v8, Lorg/checkerframework/common/value/qual/ArrayLenRange;

    .line 1258
    invoke-virtual {v4, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 1260
    .local v8, "arrayLenRangeAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v8, :cond_4

    .line 1261
    invoke-static {v8}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v9

    .local v9, "range":Lorg/checkerframework/common/value/util/Range;
    goto :goto_3

    .line 1263
    .end local v9    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_4
    sget-object v9, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    .line 1265
    .restart local v9    # "range":Lorg/checkerframework/common/value/util/Range;
    :goto_3
    if-eqz v6, :cond_5

    .line 1266
    invoke-virtual {v6, v9}, Lorg/checkerframework/common/value/RangeOrListOfValues;->add(Lorg/checkerframework/common/value/util/Range;)V

    goto :goto_4

    .line 1268
    :cond_5
    new-instance v10, Lorg/checkerframework/common/value/RangeOrListOfValues;

    invoke-direct {v10, v9}, Lorg/checkerframework/common/value/RangeOrListOfValues;-><init>(Lorg/checkerframework/common/value/util/Range;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    .end local v8    # "arrayLenRangeAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v9    # "range":Lorg/checkerframework/common/value/util/Range;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 1273
    move-object v8, v4

    check-cast v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 1274
    .end local v6    # "rolv":Lorg/checkerframework/common/value/RangeOrListOfValues;
    .end local v7    # "arrayLen":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 1275
    .end local v3    # "init":Lcom/sun/source/tree/ExpressionTree;
    .end local v4    # "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "dimension":I
    :cond_6
    goto :goto_0

    .line 1277
    :cond_7
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 1278
    .local v2, "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v3, 0x0

    .line 1279
    .local v3, "i":I
    :goto_5
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 1280
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/common/value/RangeOrListOfValues;

    .line 1281
    .local v4, "rolv":Lorg/checkerframework/common/value/RangeOrListOfValues;
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1282
    invoke-virtual {v4, v5}, Lorg/checkerframework/common/value/RangeOrListOfValues;->createAnnotation(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 1281
    invoke-virtual {v2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1283
    move-object v5, v2

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 1284
    nop

    .end local v4    # "rolv":Lorg/checkerframework/common/value/RangeOrListOfValues;
    add-int/lit8 v3, v3, 0x1

    .line 1285
    goto :goto_5

    .line 1286
    :cond_8
    return-void
.end method

.method private handledByValueChecker(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1589
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 1596
    .local v0, "tm":Ljavax/lang/model/type/TypeMirror;
    sget-object v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->COVERED_CLASS_STRINGS:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private methodIsStaticallyExecutable(Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p1, "method"    # Ljavax/lang/model/element/Element;

    .line 1408
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/common/value/qual/StaticallyExecutable;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1137
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/ConditionalExpressionTree;
    .param p2, "annotatedTypeMirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1603
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1604
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1137
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/LiteralTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1368
    invoke-direct {p0, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->handledByValueChecker(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1369
    return-object v1

    .line 1371
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1372
    .local v0, "value":Ljava/lang/Object;
    sget-object v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1399
    return-object v1

    .line 1394
    :pswitch_0
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1395
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createStringAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 1396
    .local v2, "stringAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1397
    return-object v1

    .line 1389
    .end local v2    # "stringAnno":Ljavax/lang/model/element/AnnotationMirror;
    :pswitch_1
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    .line 1390
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createNumberAnnotationMirror(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 1391
    .local v2, "numberAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1392
    return-object v1

    .line 1380
    .end local v2    # "numberAnno":Ljavax/lang/model/element/AnnotationMirror;
    :pswitch_2
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-object v3, v0

    check-cast v3, Ljava/lang/Character;

    .line 1381
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createCharAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 1382
    .local v2, "charAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1383
    return-object v1

    .line 1374
    .end local v2    # "charAnno":Ljavax/lang/model/element/AnnotationMirror;
    :pswitch_3
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    .line 1375
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createBooleanAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 1376
    .local v2, "boolAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1377
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1137
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1543
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->handledByValueChecker(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1547
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    .line 1548
    .local v0, "elem":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object v2

    .line 1549
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1551
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createResultingAnnotation(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1552
    return-object v1

    .line 1554
    :cond_1
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isFinal(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1556
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v3

    .line 1557
    .local v3, "e":Ljavax/lang/model/element/Element;
    if-eqz v3, :cond_3

    .line 1561
    invoke-static {v3}, Lorg/checkerframework/javacutil/ElementUtils;->getQualifiedClassName(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1564
    .local v4, "classname":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1565
    .local v5, "fieldName":Ljava/lang/String;
    iget-object v6, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v6}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$1200(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Lorg/checkerframework/common/value/ReflectiveEvaluator;

    move-result-object v6

    invoke-virtual {v6, v4, v5, p1}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->evaluateStaticFieldAccess(Ljava/lang/String;Ljava/lang/String;Lcom/sun/source/tree/MemberSelectTree;)Ljava/lang/Object;

    move-result-object v2

    .line 1566
    if-eqz v2, :cond_2

    .line 1567
    iget-object v6, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1568
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createResultingAnnotation(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 1567
    invoke-virtual {p2, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1570
    :cond_2
    return-object v1

    .line 1574
    .end local v3    # "e":Ljavax/lang/model/element/Element;
    .end local v4    # "classname":Ljava/lang/String;
    .end local v5    # "fieldName":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isArrayLengthAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1576
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 1577
    .local v3, "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_4

    .line 1578
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLengthResultAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 1579
    .local v4, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v4, :cond_4

    .line 1580
    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1584
    .end local v3    # "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_4
    return-object v1

    .line 1544
    .end local v0    # "elem":Ljavax/lang/model/element/VariableElement;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_5
    :goto_0
    return-object v1
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1137
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1438
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->getRangeForMathMinMax(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 1440
    .local v0, "range":Lorg/checkerframework/common/value/util/Range;
    if-eqz v0, :cond_0

    .line 1441
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1445
    .end local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->methodIsStaticallyExecutable(Ljavax/lang/model/element/Element;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1446
    invoke-direct {p0, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->handledByValueChecker(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 1450
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMethodIdentifier()Lorg/checkerframework/common/value/ValueMethodIdentifier;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$1100(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/checkerframework/common/value/ValueMethodIdentifier;->isStringLengthInvocation(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1451
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1452
    .local v0, "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v2, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLengthResultAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 1453
    .local v2, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v2, :cond_2

    .line 1454
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1456
    :cond_2
    return-object v1

    .line 1460
    .end local v0    # "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 1462
    .local v0, "arguments":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1463
    const/4 v2, 0x0

    .local v2, "argValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    goto :goto_2

    .line 1465
    .end local v2    # "argValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1466
    .restart local v2    # "argValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/ExpressionTree;

    .line 1467
    .local v4, "argument":Lcom/sun/source/tree/ExpressionTree;
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v5, v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 1468
    .local v5, "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->getValues(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object v6

    .line 1469
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 1473
    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    .end local v4    # "argument":Lcom/sun/source/tree/ExpressionTree;
    .end local v5    # "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_0

    .line 1471
    .restart local v4    # "argument":Lcom/sun/source/tree/ExpressionTree;
    .restart local v5    # "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v6    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_6
    :goto_1
    return-object v1

    .line 1478
    .end local v4    # "argument":Lcom/sun/source/tree/ExpressionTree;
    .end local v5    # "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_7
    :goto_2
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v3, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 1481
    .local v3, "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v3, :cond_9

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1482
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->getValues(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object v4

    .line 1483
    .local v4, "receiverValues":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1485
    :cond_8
    return-object v1

    .line 1488
    .end local v4    # "receiverValues":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_9
    const/4 v4, 0x0

    .line 1492
    .restart local v4    # "receiverValues":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_a
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v5}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$1200(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Lorg/checkerframework/common/value/ReflectiveEvaluator;

    move-result-object v5

    invoke-virtual {v5, v2, v4, p1}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->evaluateMethodCall(Ljava/util/List;Ljava/util/List;Lcom/sun/source/tree/MethodInvocationTree;)Ljava/util/List;

    move-result-object v5

    .line 1493
    .local v5, "returnValues":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v5, :cond_b

    .line 1494
    return-object v1

    .line 1496
    :cond_b
    iget-object v6, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1497
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createResultingAnnotation(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 1498
    .local v6, "returnType":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1500
    return-object v1

    .line 1447
    .end local v0    # "arguments":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .end local v2    # "argValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    .end local v3    # "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "receiverValues":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "returnValues":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "returnType":Ljavax/lang/model/element/AnnotationMirror;
    :cond_c
    :goto_3
    return-object v1
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1137
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1146
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v0

    .line 1147
    .local v0, "dimensions":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v1

    .line 1152
    .local v1, "initializers":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1153
    move-object v2, p2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-direct {p0, v0, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->handleDimensions(Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)V

    goto :goto_0

    .line 1156
    :cond_0
    move-object v2, p2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->handleInitializers(Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;)V

    .line 1159
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getClassFromType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v2

    .line 1160
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 1161
    .local v3, "stringVal":Ljava/lang/String;
    const-class v4, [C

    if-ne v2, v4, :cond_1

    .line 1162
    invoke-direct {p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->getCharArrayStringVal(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 1165
    :cond_1
    if-eqz v3, :cond_2

    .line 1166
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createStringAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 1167
    .local v4, "newQual":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1171
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "stringVal":Ljava/lang/String;
    .end local v4    # "newQual":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1137
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1505
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/NewClassTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->methodIsStaticallyExecutable(Ljavax/lang/model/element/Element;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1506
    invoke-direct {p0, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->handledByValueChecker(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 1511
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 1513
    .local v0, "arguments":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1514
    const/4 v2, 0x0

    .local v2, "argValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    goto :goto_2

    .line 1516
    .end local v2    # "argValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    .restart local v2    # "argValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/ExpressionTree;

    .line 1518
    .local v4, "argument":Lcom/sun/source/tree/ExpressionTree;
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v5, v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 1519
    .local v5, "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->getValues(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object v6

    .line 1520
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 1524
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    .end local v4    # "argument":Lcom/sun/source/tree/ExpressionTree;
    .end local v5    # "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_0

    .line 1522
    .restart local v4    # "argument":Lcom/sun/source/tree/ExpressionTree;
    .restart local v5    # "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v6    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    :goto_1
    return-object v1

    .line 1529
    .end local v4    # "argument":Lcom/sun/source/tree/ExpressionTree;
    .end local v5    # "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_4
    :goto_2
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1530
    invoke-static {v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$1200(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Lorg/checkerframework/common/value/ReflectiveEvaluator;

    move-result-object v3

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-virtual {v3, v2, p1, v4}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->evaluteConstructorCall(Ljava/util/ArrayList;Lcom/sun/source/tree/NewClassTree;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object v3

    .line 1531
    .local v3, "returnValues":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v3, :cond_5

    .line 1532
    return-object v1

    .line 1534
    :cond_5
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1535
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createResultingAnnotation(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 1536
    .local v4, "returnType":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1538
    return-object v1

    .line 1507
    .end local v0    # "arguments":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .end local v2    # "argValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    .end local v3    # "returnValues":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "returnType":Ljavax/lang/model/element/AnnotationMirror;
    :cond_6
    :goto_3
    return-object v1
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1137
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1312
    invoke-direct {p0, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->handledByValueChecker(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1313
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1314
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 1315
    .local v0, "oldAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_0

    .line 1316
    return-object v1

    .line 1318
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 1322
    .local v2, "newType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 1325
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v3, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1326
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    move-object v4, v3

    .local v4, "range":Lorg/checkerframework/common/value/util/Range;
    const-wide/16 v5, 0xa

    invoke-virtual {v3, v5, v6}, Lorg/checkerframework/common/value/util/Range;->isWiderThan(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1327
    invoke-static {v2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getClassFromType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v3

    .line 1328
    .local v3, "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/String;

    if-ne v3, v5, :cond_2

    .line 1329
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v5, v5, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    .local v5, "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 1330
    .end local v5    # "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    const-class v5, Ljava/lang/Boolean;

    if-eq v3, v5, :cond_3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v5, :cond_3

    .line 1334
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v2, v4}, Lorg/checkerframework/common/value/util/NumberUtils;->castRange(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 1336
    .end local v3    # "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    goto :goto_2

    .line 1331
    .end local v5    # "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    .restart local v3    # "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v5, "ValueAnnotatedTypeFactory: can\'t convert int to boolean"

    invoke-direct {v1, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1337
    .end local v3    # "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_4
    invoke-static {v0, v2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesCastedToType(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object v3

    .line 1338
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createResultingAnnotation(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .restart local v5    # "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_2

    .line 1324
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_5
    :goto_1
    move-object v5, v0

    .line 1340
    .restart local v5    # "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_2
    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .end local v0    # "oldAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "newType":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_3

    .line 1341
    :cond_6
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v2, :cond_7

    .line 1342
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v2, :cond_8

    .line 1343
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    goto :goto_4

    .line 1341
    :cond_7
    :goto_3
    nop

    .line 1346
    :cond_8
    :goto_4
    return-object v1
.end method
