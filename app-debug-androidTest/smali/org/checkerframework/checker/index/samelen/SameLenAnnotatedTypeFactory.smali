.class public Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "SameLenAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;,
        Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;
    }
.end annotation


# instance fields
.field private final BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field private final POLY:Ljavax/lang/model/element/AnnotationMirror;

.field public final UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

.field private final imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 85
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 73
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/index/qual/SameLenUnknown;

    .line 74
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 76
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/index/qual/SameLenBottom;

    .line 77
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 79
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/index/qual/PolySameLen;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->POLY:Ljavax/lang/model/element/AnnotationMirror;

    .line 81
    new-instance v1, Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    invoke-direct {v1, p0}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    iput-object v1, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    .line 87
    const-class v1, Lorg/checkerframework/checker/index/qual/PolyLength;

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 89
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->postInit()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 70
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;)Lorg/checkerframework/checker/index/IndexMethodIdentifier;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 70
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 70
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method public static mayAppearInSameLen(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 2
    .param p0, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 150
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsUnknown()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0
.end method


# virtual methods
.method public createCombinedSameLen(Ljava/util/List;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 384
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .local p2, "annos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 385
    .local v0, "exprs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 386
    .local v2, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-static {v2}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->mayAppearInSameLen(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v2    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_0
    goto :goto_0

    .line 390
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 391
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    const-class v3, Lorg/checkerframework/checker/index/qual/SameLen;

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    invoke-static {v2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 394
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_1

    .line 395
    :cond_3
    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createSameLen(Ljava/util/Collection;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public createCombinedSameLen(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "rec1"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "rec2"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p3, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v0, "receivers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v1, "annos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createCombinedSameLen(Ljava/util/List;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 110
    new-instance v0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenQualifierHierarchy;-><init>(Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    return-object v0
.end method

.method public createSameLen(Ljava/util/Collection;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 349
    .local p1, "exprs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/checker/index/qual/SameLen;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 350
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 351
    .local v1, "exprArray":[Ljava/lang/String;
    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 352
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/checker/index/qual/SameLen;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/checker/index/qual/SameLenBottom;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/checker/index/qual/SameLenUnknown;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/checkerframework/checker/index/qual/PolySameLen;

    aput-object v3, v1, v2

    .line 101
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 100
    return-object v0
.end method

.method public createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 272
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory$SameLenTreeAnnotator;-><init>(Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    return-object v0
.end method

.method public getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 116
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 118
    .local v0, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_2

    .line 119
    const-class v1, Lorg/checkerframework/checker/index/qual/SameLen;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 120
    .local v1, "anm":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_2

    .line 124
    :try_start_0
    move-object v2, p1

    check-cast v2, Lcom/sun/source/tree/VariableTree;

    invoke-static {p0, v2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->internalReprOfVariable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/VariableTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .local v2, "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 125
    .end local v2    # "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "ex":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    const/4 v3, 0x0

    move-object v2, v3

    .line 129
    .local v2, "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_0
    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "varName":Ljava/lang/String;
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v4

    .line 133
    .local v4, "exprs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    iget-object v5, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {p0, v4}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createSameLen(Ljava/util/Collection;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 145
    .end local v1    # "anm":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v3    # "varName":Ljava/lang/String;
    .end local v4    # "exprs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-object v0
.end method

.method getMethodIdentifier()Lorg/checkerframework/checker/index/IndexMethodIdentifier;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->imf:Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    return-object v0
.end method

.method public getSameLensFromString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)Ljava/util/List;
    .locals 2
    .param p1, "sequenceExpression"    # Ljava/lang/String;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;
    .param p3, "currentPath"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/source/tree/Tree;",
            "Lcom/sun/source/util/TreePath;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 327
    :try_start_0
    const-class v0, Lorg/checkerframework/checker/index/qual/SameLen;

    .line 328
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getAnnotationFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .local v0, "sameLenAnno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 330
    .end local v0    # "sameLenAnno":Ljavax/lang/model/element/AnnotationMirror;
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 334
    .local v0, "sameLenAnno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    if-nez v0, :cond_0

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 337
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
