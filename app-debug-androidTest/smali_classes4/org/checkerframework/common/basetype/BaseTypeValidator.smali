.class public Lorg/checkerframework/common/basetype/BaseTypeValidator;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "BaseTypeValidator.java"

# interfaces
.implements Lorg/checkerframework/common/basetype/TypeValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "Ljava/lang/Void;",
        "Lcom/sun/source/tree/Tree;",
        ">;",
        "Lorg/checkerframework/common/basetype/TypeValidator;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field protected checkTopLevelDeclaredType:Z

.field protected final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field protected isValid:Z

.field protected final visitor:Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p3, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "*>;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")V"
        }
    .end annotation

    .line 55
    .local p2, "visitor":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<*>;"
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->isValid:Z

    .line 42
    iput-boolean v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checkTopLevelDeclaredType:Z

    .line 56
    iput-object p1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 57
    iput-object p2, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitor:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 58
    iput-object p3, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 59
    return-void
.end method

.method private extractParameterizedTypeTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Lorg/checkerframework/javacutil/Pair;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ")",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/ParameterizedTypeTree;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;"
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    .line 330
    .local v0, "typeargtree":Lcom/sun/source/tree/ParameterizedTypeTree;
    sget-object v1, Lorg/checkerframework/common/basetype/BaseTypeValidator$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 383
    :pswitch_0
    goto :goto_0

    .line 356
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lcom/sun/source/tree/AnnotatedTypeTree;

    .line 357
    .local v1, "tr":Lcom/sun/source/tree/AnnotatedTypeTree;
    invoke-interface {v1}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 358
    .local v2, "undtr":Lcom/sun/source/tree/ExpressionTree;
    instance-of v3, v2, Lcom/sun/source/tree/ParameterizedTypeTree;

    if-eqz v3, :cond_0

    .line 359
    move-object v0, v2

    check-cast v0, Lcom/sun/source/tree/ParameterizedTypeTree;

    goto :goto_0

    .line 360
    :cond_0
    instance-of v3, v2, Lcom/sun/source/tree/IdentifierTree;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 366
    :cond_1
    nop

    .line 367
    invoke-direct {p0, v2, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->extractParameterizedTypeTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v3

    .line 368
    .local v3, "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ParameterizedTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    iget-object v4, v3, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 369
    iget-object v4, v3, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 371
    .end local v3    # "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ParameterizedTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    goto :goto_0

    .line 343
    .end local v1    # "tr":Lcom/sun/source/tree/AnnotatedTypeTree;
    .end local v2    # "undtr":Lcom/sun/source/tree/ExpressionTree;
    :pswitch_2
    move-object v1, p1

    check-cast v1, Lcom/sun/source/tree/NewClassTree;

    .line 344
    .local v1, "nct":Lcom/sun/source/tree/NewClassTree;
    invoke-interface {v1}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 345
    .local v2, "nctid":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_2

    .line 346
    move-object v0, v2

    check-cast v0, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 352
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    move-object p2, v3

    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    goto :goto_0

    .line 340
    .end local v1    # "nct":Lcom/sun/source/tree/NewClassTree;
    .end local v2    # "nctid":Lcom/sun/source/tree/ExpressionTree;
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 341
    goto :goto_0

    .line 332
    :pswitch_4
    move-object v1, p1

    check-cast v1, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v1}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 333
    .local v1, "lt":Lcom/sun/source/tree/Tree;
    instance-of v2, v1, Lcom/sun/source/tree/ParameterizedTypeTree;

    if-eqz v2, :cond_2

    .line 334
    move-object v0, v1

    check-cast v0, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 392
    .end local v1    # "lt":Lcom/sun/source/tree/Tree;
    :cond_2
    :goto_0
    invoke-static {v0, p2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public areBoundsValid(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 5
    .param p1, "upperBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "lowerBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 490
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 491
    .local v0, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    nop

    .line 492
    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v1

    .line 493
    .local v1, "upperBoundAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 494
    invoke-static {v0, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v2

    .line 496
    .local v2, "lowerBoundAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 497
    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    return v3

    .line 503
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method protected isTopLevelValidType(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/source/Result;
    .locals 6
    .param p1, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 144
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 145
    .local v0, "annotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v1

    .line 146
    .local v1, "seenTops":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 147
    .local v3, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 148
    .local v4, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    const-string v2, "type.invalid.conflicting.annos"

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    return-object v2

    .line 151
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v3    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "top":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 154
    :cond_1
    invoke-static {p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->canHaveEmptyAnnotationSet(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v2

    .line 157
    .local v2, "canHaveEmptyAnnotationSet":Z
    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 158
    const-string v3, "type.invalid.too.few.annotations"

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    return-object v3

    .line 160
    :cond_2
    sget-object v3, Lorg/checkerframework/framework/source/Result;->SUCCESS:Lorg/checkerframework/framework/source/Result;

    return-object v3
.end method

.method public isValid(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 73
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->isValidType(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/source/Result;

    move-result-object v0

    .line 74
    .local v0, "result":Lorg/checkerframework/framework/source/Result;
    invoke-virtual {v0}, Lorg/checkerframework/framework/source/Result;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v1, v0, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 76
    const/4 v1, 0x0

    return v1

    .line 78
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->isValid:Z

    .line 79
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->shouldCheckTopLevelDeclaredType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checkTopLevelDeclaredType:Z

    .line 80
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-boolean v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->isValid:Z

    return v1
.end method

.method protected isValidType(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/source/Result;
    .locals 2
    .param p1, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 117
    new-instance v0, Lorg/checkerframework/common/basetype/BaseTypeValidator$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeValidator$1;-><init>(Lorg/checkerframework/common/basetype/BaseTypeValidator;Lorg/checkerframework/framework/type/QualifierHierarchy;)V

    .line 137
    .local v0, "scanner":Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<Lorg/checkerframework/framework/source/Result;Ljava/lang/Void;>;"
    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/source/Result;

    return-object v1
.end method

.method protected reportInvalidAnnotationsOnUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "p"    # Lcom/sun/source/tree/Tree;

    .line 236
    const-string v0, "type.invalid.annotations.on.use"

    invoke-virtual {p0, v0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->reportValidityResultOnUnannotatedType(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 237
    return-void
.end method

.method protected reportInvalidBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V
    .locals 7
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 202
    sget-object v0, Lorg/checkerframework/common/basetype/BaseTypeValidator$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 216
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type is not bounded.\ntype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ntree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :pswitch_0
    const-string v0, "wildcard"

    .line 211
    .local v0, "label":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 212
    .local v1, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 213
    .local v2, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 204
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_1
    const-string v0, "type parameter"

    .line 205
    .restart local v0    # "label":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 206
    .restart local v1    # "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 207
    .restart local v2    # "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 220
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 224
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString(Z)Ljava/lang/String;

    move-result-object v6

    .line 226
    invoke-virtual {v2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString(Z)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v0, v4, v6, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 221
    const-string v5, "bound.type.incompatible"

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    .line 220
    invoke-virtual {v3, v4, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 228
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->isValid:Z

    .line 229
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected reportInvalidType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "p"    # Lcom/sun/source/tree/Tree;

    .line 232
    const-string v0, "type.invalid"

    invoke-virtual {p0, v0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->reportValidityResult(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 233
    return-void
.end method

.method protected reportValidityResult(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V
    .locals 3
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Lcom/sun/source/tree/Tree;

    .line 167
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->isValid:Z

    .line 169
    return-void
.end method

.method protected reportValidityResultOnUnannotatedType(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V
    .locals 4
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Lcom/sun/source/tree/Tree;

    .line 183
    nop

    .line 184
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 185
    .local v0, "underlying":Ljavax/lang/model/type/TypeMirror;
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->isValid:Z

    .line 187
    return-void
.end method

.method protected shouldCheckTopLevelDeclaredType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)Z
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 94
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 95
    return v2

    .line 97
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->isLocalVariable(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->isExpressionTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->isTypeTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 97
    :cond_2
    :goto_0
    return v2
.end method

.method public bridge synthetic visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 412
    move-object v0, p1

    .line 414
    .local v0, "comp":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_0

    .line 417
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 419
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 418
    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldSkipUses(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1

    .line 423
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitor:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->reportInvalidAnnotationsOnUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 427
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;
    .locals 9
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 241
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldSkipUses(Ljavax/lang/model/element/Element;)Z

    move-result v0

    .line 247
    .local v0, "skipChecks":Z
    iget-boolean v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checkTopLevelDeclaredType:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 251
    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 252
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getTypeDeclarationBounds(Ljavax/lang/model/type/TypeMirror;)Ljava/util/Set;

    move-result-object v1

    .line 254
    .local v1, "bounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 255
    .local v2, "elemType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->clearAnnotations()V

    .line 256
    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 258
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitor:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-virtual {v3, v2, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->reportInvalidAnnotationsOnUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 264
    .end local v1    # "bounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v2    # "elemType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checkTopLevelDeclaredType:Z

    .line 270
    nop

    .line 271
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->extractParameterizedTypeTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v1

    .line 272
    .local v1, "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/ParameterizedTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    iget-object v2, v1, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 273
    .local v2, "typeArgTree":Lcom/sun/source/tree/ParameterizedTypeTree;
    iget-object v3, v1, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 275
    if-nez v2, :cond_2

    .line 276
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Void;

    return-object v3

    .line 282
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitedNodes:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {p0, p1, v2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitParameterizedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/ParameterizedTypeTree;)Ljava/lang/Void;

    .line 295
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    .line 297
    .local v3, "tatypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    if-nez v3, :cond_3

    .line 298
    return-object v4

    .line 303
    :cond_3
    invoke-interface {v2}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 304
    .local v5, "numTypeArgs":I
    if-eqz v5, :cond_6

    .line 311
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_5

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size mismatch for type arguments: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 314
    :cond_5
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 315
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v2}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v7, v8}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 323
    .end local v6    # "i":I
    :cond_6
    return-object v4
.end method

.method protected visitParameterizedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/ParameterizedTypeTree;)Ljava/lang/Void;
    .locals 6
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "tree"    # Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 442
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->isDiamondTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 443
    return-object v1

    .line 446
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 447
    .local v0, "element":Ljavax/lang/model/element/TypeElement;
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v2, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldSkipUses(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    return-object v1

    .line 451
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 452
    invoke-virtual {v2, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->typeVariablesFromUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v2

    .line 454
    .local v2, "bounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;>;"
    iget-object v3, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitor:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {p2}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, p2, v2, v4, v5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkTypeArguments(Lcom/sun/source/tree/Tree;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 456
    return-object v1
.end method

.method public bridge synthetic visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 397
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getUnderlyingType()Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldSkipUses(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitor:Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->reportInvalidAnnotationsOnUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 405
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 461
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 465
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->isDeclaration()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->areBoundsValid(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->reportInvalidBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 469
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 474
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 478
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->areBoundsValid(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->reportInvalidBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 482
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
