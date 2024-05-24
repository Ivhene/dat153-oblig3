.class public Lorg/checkerframework/framework/type/DefaultTypeHierarchy;
.super Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;
.source "DefaultTypeHierarchy.java"

# interfaces
.implements Lorg/checkerframework/framework/type/TypeHierarchy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;",
        "Lorg/checkerframework/framework/type/TypeHierarchy;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field protected currentTop:Ljavax/lang/model/element/AnnotationMirror;

.field protected final equalityComparer:Lorg/checkerframework/framework/type/StructuralEqualityComparer;

.field protected final ignoreRawTypes:Z

.field protected final invariantArrayComponents:Z

.field protected final qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

.field protected final typeargVisitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

.field protected final visitHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/QualifierHierarchy;ZZ)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p3, "ignoreRawTypes"    # Z
    .param p4, "invariantArrayComponents"    # Z

    .line 127
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 129
    iput-object p2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 130
    new-instance v0, Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    .line 131
    new-instance v0, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->typeargVisitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    .line 132
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->createEqualityComparer()Lorg/checkerframework/framework/type/StructuralEqualityComparer;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->equalityComparer:Lorg/checkerframework/framework/type/StructuralEqualityComparer;

    .line 134
    iput-boolean p3, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->ignoreRawTypes:Z

    .line 135
    iput-boolean p4, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->invariantArrayComponents:Z

    .line 136
    return-void
.end method

.method private ignoreUninferredTypeArgument(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 400
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 402
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 403
    .local v0, "insideWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    const/4 v1, 0x1

    return v1

    .line 407
    .end local v0    # "insideWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isContainedWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z
    .locals 5
    .param p1, "inside"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "outside"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "outsideUpperBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "outsideLowerBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p5, "canBeCovariant"    # Z

    .line 373
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 375
    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 376
    invoke-virtual {v0, p3, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->widenToUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p3

    .line 378
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 379
    invoke-direct {p0, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->ignoreUninferredTypeArgument(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    return v2

    .line 382
    :cond_1
    move-object v0, p3

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p3

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 386
    invoke-static {v0, p1, p3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->castedAsSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 387
    .local v0, "castedInside":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v0, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checkAndSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 388
    return v3

    .line 391
    :cond_3
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v4, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v4, :cond_4

    .line 392
    invoke-virtual {p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v4, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v4, :cond_4

    .line 394
    return v2

    .line 396
    :cond_4
    if-nez p5, :cond_6

    invoke-virtual {p0, p4, p1}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checkAndSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :cond_6
    :goto_1
    return v2
.end method


# virtual methods
.method protected areAllSubtypes(Ljava/lang/Iterable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 3
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")Z"
        }
    .end annotation

    .line 297
    .local p1, "subtypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 298
    .local v1, "subtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, v1, p2, v2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    const/4 v0, 0x0

    return v0

    .line 301
    .end local v1    # "subtype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected areEqualInHierarchy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 308
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->equalityComparer:Lorg/checkerframework/framework/type/StructuralEqualityComparer;

    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqualInHierarchy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method protected checkAndSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 4
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 279
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    return v0

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    .line 284
    .local v0, "result":Z
    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Boolean;)V

    .line 285
    return v0
.end method

.method protected createEqualityComparer()Lorg/checkerframework/framework/type/StructuralEqualityComparer;
    .locals 2

    .line 140
    new-instance v0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;

    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->typeargVisitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;-><init>(Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;)V

    return-object v0
.end method

.method protected bridge synthetic defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/String;
    .locals 2
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Ljava/lang/Void;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incomparable types ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") visitHistory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isAnnoSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Z)Z
    .locals 1
    .param p1, "subtypeAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "supertypeAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "annosCanBeEmtpy"    # Z

    .line 235
    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 236
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method protected isBottom(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 4
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 250
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 251
    .local v0, "bottom":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 252
    return v1

    .line 255
    :cond_0
    sget-object v2, Lorg/checkerframework/framework/type/DefaultTypeHierarchy$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 267
    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 268
    .local v2, "subtypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v2, v0, v1}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isAnnoSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Z)Z

    move-result v1

    return v1

    .line 260
    .end local v2    # "subtypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    :pswitch_0
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 261
    .local v1, "subtypeWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isBottom(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v2

    return v2

    .line 257
    .end local v1    # "subtypeWc":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isBottom(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isContainedBy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z
    .locals 10
    .param p1, "inside"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "outside"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "canBeCovariant"    # Z

    .line 328
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->ignoreUninferredTypeArgument(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->ignoreUninferredTypeArgument(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 333
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v2, :cond_2

    .line 334
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    if-eqz p3, :cond_1

    .line 336
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0

    .line 338
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->areEqualInHierarchy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    return v0

    .line 343
    :cond_2
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v2, :cond_3

    .line 344
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 345
    .local v0, "outsideUpperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v2, p2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .local v2, "outsideLowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 346
    .end local v0    # "outsideUpperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "outsideLowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 347
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 348
    .restart local v0    # "outsideUpperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v2, p2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 353
    .restart local v2    # "outsideLowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->typeargVisitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v4, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v3, p1, p2, v4}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->result(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Boolean;

    move-result-object v9

    .line 354
    .local v9, "previousResult":Ljava/lang/Boolean;
    if-eqz v9, :cond_4

    .line 355
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 358
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->typeargVisitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v4, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v3, p1, p2, v4, v1}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 359
    nop

    .line 360
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move-object v7, v2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isContainedWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z

    move-result v1

    .line 362
    .local v1, "result":Z
    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->typeargVisitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v4, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v3, p1, p2, v4, v1}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 363
    return v1

    .line 350
    .end local v0    # "outsideUpperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "result":Z
    .end local v2    # "outsideLowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v9    # "previousResult":Ljava/lang/Boolean;
    :cond_5
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a wildcard or captured type variable, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->typeargVisitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, p1, p2, v2, v1}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 330
    return v1
.end method

.method protected isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z

    move-result v0

    return v0
.end method

.method protected isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "annosCanBeEmtpy"    # Z

    .line 218
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 219
    .local v0, "subtypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 221
    .local v1, "supertypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isAnnoSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Z)Z

    move-result v2

    return v2
.end method

.method public isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 157
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 158
    .local v1, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, p1, p2, v1}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const/4 v0, 0x0

    return v0

    .line 161
    .end local v1    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 180
    if-eqz p3, :cond_0

    .line 181
    iput-object p3, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 182
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lorg/checkerframework/framework/util/AtmCombo;->accept(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Lorg/checkerframework/framework/type/visitor/AtmComboVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 416
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->invariantArrayComponents:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 418
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->areEqualInHierarchy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 422
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 420
    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 416
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 429
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitArray_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 441
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 442
    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->castedAsSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 441
    invoke-virtual {p0, v0, p2, v1}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArray_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitArray_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 435
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArray_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitArray_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 450
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcardSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitArray_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 458
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitDeclared_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 464
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    const/4 v1, 0x1

    .line 469
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 464
    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->containsUninferredTypeArguments()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->containsUninferredTypeArguments()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    return-object v1

    .line 471
    :cond_1
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 472
    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->castedAsSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 474
    .local v0, "subtypeAsSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 475
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 478
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v2, v0, p2, v3}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 479
    return-object v1

    .line 482
    :cond_3
    nop

    .line 483
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v2

    invoke-virtual {p0, v0, p2, v1, v2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;ZZ)Z

    move-result v1

    .line 484
    .local v1, "result":Z
    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, p2, v3, v4}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Boolean;)V

    .line 486
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 545
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitIntersectionSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitDeclared_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 551
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitDeclared_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 559
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 560
    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->castedAsSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    .line 561
    .local v0, "subAsSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 564
    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 570
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevarSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitDeclared_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 576
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    .line 577
    .local v0, "types":Ljavax/lang/model/util/Types;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 578
    .local v2, "supertypeAltern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 579
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v4

    .line 578
    invoke-static {v3, v4, v0}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 580
    invoke-virtual {p0, p1, v2, v3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 581
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 583
    .end local v2    # "supertypeAltern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 584
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitDeclared_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 590
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcardSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected visitIntersectionSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;)Z
    .locals 6
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 956
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    const/4 v0, 0x1

    return v0

    .line 959
    :cond_0
    const/4 v0, 0x1

    .line 960
    .local v0, "result":Z
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 963
    .local v2, "aSupertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 964
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 965
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    iget-object v5, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v5, v5, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 963
    invoke-static {v3, v4, v5}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 967
    invoke-virtual {p0, p1, v2, v3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 968
    const/4 v0, 0x0

    .line 969
    goto :goto_1

    .line 971
    .end local v2    # "aSupertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    goto :goto_0

    .line 972
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitHistory:Lorg/checkerframework/framework/type/SubtypeVisitHistory;

    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/checkerframework/framework/type/SubtypeVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Boolean;)V

    .line 973
    return v0
.end method

.method public visitIntersection_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 598
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    .line 599
    .local v0, "types":Ljavax/lang/model/util/Types;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 600
    .local v2, "subtypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 601
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v4

    .line 600
    invoke-static {v3, v4, v0}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 602
    invoke-virtual {p0, v2, p2, v3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 605
    .end local v2    # "subtypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 606
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitIntersection_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitIntersection_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 624
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    .line 625
    .local v0, "types":Ljavax/lang/model/util/Types;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 626
    .local v2, "subtypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 627
    .local v4, "supertypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 628
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v5

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v6

    .line 627
    invoke-static {v5, v6, v0}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 629
    invoke-virtual {p0, v2, v4, v5}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 630
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 632
    .end local v4    # "supertypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_1

    .line 633
    .end local v2    # "subtypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_1
    goto :goto_0

    .line 634
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 641
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 642
    .local v1, "subtypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 645
    .end local v1    # "subtypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 646
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitIntersection_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitIntersection_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 612
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 613
    .local v1, "subtypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 614
    invoke-virtual {p0, v1, p2, v2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 617
    .end local v1    # "subtypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 618
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitIntersection_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitIntersection_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 653
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    .line 654
    .local v0, "types":Ljavax/lang/model/util/Types;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 655
    .local v2, "subtypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 656
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v4

    .line 655
    invoke-static {v3, v4, v0}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 657
    invoke-virtual {p0, v2, p2, v3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 660
    .end local v2    # "subtypeI":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 661
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitIntersection_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitIntersection_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 669
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitNull_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 675
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitNull_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 710
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitNull_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 693
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 716
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitNull_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 681
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevarSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitNull_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 699
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 700
    .local v1, "supertypeAltern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v1, v2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 703
    .end local v1    # "supertypeAltern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    goto :goto_0

    .line 704
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitNull_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 687
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcardSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitNull_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 725
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 726
    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->castedAsSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 727
    .local v0, "subAsSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-nez v0, :cond_0

    .line 728
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 730
    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 742
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitIntersectionSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitPrimitive_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 736
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 748
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lorg/checkerframework/framework/util/AtmCombo;->accept(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Lorg/checkerframework/framework/type/visitor/AtmComboVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitPrimitive_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 754
    iget-object v0, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 761
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitPrimitive_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected visitTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;ZZ)Z
    .locals 15
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "subtypeRaw"    # Z
    .param p4, "supertypeRaw"    # Z

    .line 500
    move-object v0, p0

    iget-boolean v1, v0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->ignoreRawTypes:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 502
    .local v1, "ignoreTypeArgs":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 503
    return v3

    .line 506
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    .line 507
    .local v4, "subtypeTypeArgs":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    .line 509
    .local v5, "supertypeTypeArgs":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 510
    return v2

    .line 512
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 513
    return v3

    .line 516
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v6

    invoke-interface {v6}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/TypeElement;

    .line 517
    .local v6, "supertypeElem":Ljavax/lang/model/element/TypeElement;
    const/4 v7, 0x0

    .line 518
    .local v7, "covariantArgIndexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v8, p2

    iget-object v9, v8, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const-class v10, Lorg/checkerframework/framework/qual/Covariant;

    .line 519
    invoke-virtual {v9, v6, v10}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v9

    .line 521
    .local v9, "covam":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v9, :cond_5

    .line 522
    const-class v10, Ljava/lang/Integer;

    .line 523
    const-string v11, "value"

    invoke-static {v9, v11, v10, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v7

    .line 526
    :cond_5
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 527
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 528
    .local v11, "superTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 529
    .local v12, "subTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v7, :cond_6

    .line 530
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move v13, v3

    goto :goto_2

    :cond_6
    move v13, v2

    .line 532
    .local v13, "covariant":Z
    :goto_2
    invoke-virtual {p0, v12, v11, v13}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isContainedBy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z

    move-result v14

    .line 534
    .local v14, "result":Z
    if-nez v14, :cond_7

    .line 535
    return v2

    .line 526
    .end local v11    # "superTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v12    # "subTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v13    # "covariant":Z
    .end local v14    # "result":Z
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 539
    .end local v10    # "i":I
    :cond_8
    return v3
.end method

.method protected visitTypevarSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 6
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 989
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 990
    .local v0, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    if-eqz v1, :cond_0

    .line 992
    iget-object v1, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getUnboxedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    move-result-object v0

    .line 994
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_8

    .line 995
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->getTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_8

    .line 998
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_6

    .line 999
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    goto :goto_2

    .line 1010
    :cond_2
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_5

    .line 1011
    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    .line 1013
    .local v1, "types":Ljavax/lang/model/util/Types;
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1014
    .local v3, "ub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 1015
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 1014
    invoke-static {v4, v5, v1}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1016
    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1017
    const/4 v2, 0x1

    return v2

    .line 1019
    .end local v3    # "ub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    goto :goto_1

    .line 1020
    :cond_4
    const/4 v2, 0x0

    return v2

    .line 1022
    .end local v1    # "types":Ljavax/lang/model/util/Types;
    :cond_5
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    return v1

    .line 1000
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_7

    .line 1001
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 1003
    :cond_7
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 1004
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    goto :goto_0

    .line 1024
    :cond_8
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checkAndSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    return v1
.end method

.method protected visitTypevarSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 979
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checkAndSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    return v0
.end method

.method public visitTypevar_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 815
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevarSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevar_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 822
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitIntersectionSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevar_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 877
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevarSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevar_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 828
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevarSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevar_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 835
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->haveSameDeclaration(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z

    move-result v0

    const/4 v1, 0x1

    .line 866
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 835
    if-eqz v0, :cond_4

    .line 837
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 838
    .local v0, "subtypeHasAnno":Z
    :goto_0
    iget-object v4, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    if-eqz v4, :cond_1

    move v3, v1

    .line 840
    .local v3, "supertypeHasAnno":Z
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 843
    invoke-virtual {p0, p1, p2, v1}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 845
    :cond_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    .line 847
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->areEqualInHierarchy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 849
    return-object v2

    .line 851
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v4, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v4, :cond_4

    .line 859
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    return-object v1

    .line 863
    .end local v0    # "subtypeHasAnno":Z
    .end local v3    # "supertypeHasAnno":Z
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 864
    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    .line 863
    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->areCorrespondingTypeVariables(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 865
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->areEqualInHierarchy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 866
    return-object v2

    .line 871
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevarSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 883
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcardSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitTypevar_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected visitUnionSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1029
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->areAllSubtypes(Ljava/lang/Iterable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    return v0
.end method

.method public visitUnion_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 769
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitUnionSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnion_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitUnion_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 784
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitUnionSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnion_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitUnion_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 796
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitUnionSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 807
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcardSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnion_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitUnion_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected visitWildcardSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 5
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1043
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    return v0

    .line 1046
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 1047
    .local v0, "superTypeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 1048
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeVariable;

    .line 1049
    .local v1, "atv":Ljavax/lang/model/type/TypeVariable;
    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1050
    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->getCapturedWildcard(Ljavax/lang/model/type/TypeVariable;)Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    .line 1054
    .end local v1    # "atv":Ljavax/lang/model/type/TypeVariable;
    :cond_1
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_5

    .line 1063
    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1064
    .local v1, "subtypeHasAnno":Z
    :goto_0
    iget-object v4, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 1066
    .local v2, "supertypeHasAnno":Z
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 1069
    invoke-virtual {p0, p1, p2, v3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isPrimarySubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z

    move-result v3

    return v3

    .line 1071
    :cond_4
    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 1073
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->areEqualInHierarchy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1076
    return v3

    .line 1080
    .end local v1    # "subtypeHasAnno":Z
    .end local v2    # "supertypeHasAnno":Z
    :cond_5
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, v1, p2, v2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    return v1
.end method

.method protected visitWildcardSupertype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)Z
    .locals 2
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 1034
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    return v0

    .line 1038
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public visitWildcard_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 892
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcardSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcard_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 898
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 901
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 911
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 912
    .local v0, "subtypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 913
    .local v1, "supertypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isAnnoSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 916
    .end local v0    # "subtypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v1    # "supertypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcardSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 922
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcardSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcard_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 928
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 930
    .local v0, "subtypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 931
    .local v1, "supertypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isAnnoSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 933
    .end local v0    # "subtypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v1    # "supertypeAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcardSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcard_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 939
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcardSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 945
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcardSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
