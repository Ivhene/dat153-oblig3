.class public Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "GuiEffectTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory$GuiEffectTreeAnnotator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final debugSpew:Z

.field protected final uiAnonClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation
.end field

.field protected final uiLambdas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sun/source/tree/LambdaExpressionTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "spew"    # Z

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->uiLambdas:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->uiAnonClasses:Ljava/util/Set;

    .line 75
    iput-boolean p2, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    .line 76
    invoke-virtual {p0}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->postInit()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;)Ljavax/lang/model/util/Elements;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;

    .line 44
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    return-object v0
.end method

.method private static isAnonymousType(Ljavax/lang/model/element/TypeElement;)Z
    .locals 1
    .param p0, "elem"    # Ljavax/lang/model/element/TypeElement;

    .line 175
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Name;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public constrainAnonymousClassToUI(Ljavax/lang/model/element/TypeElement;)V
    .locals 1
    .param p1, "classElt"    # Ljavax/lang/model/element/TypeElement;

    .line 635
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isAnonymous(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->uiAnonClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 637
    return-void

    .line 635
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constrainLambdaToUI(Lcom/sun/source/tree/LambdaExpressionTree;)V
    .locals 1
    .param p1, "lambdaExpressionTree"    # Lcom/sun/source/tree/LambdaExpressionTree;

    .line 621
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->uiLambdas:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 622
    return-void
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 609
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory$GuiEffectTreeAnnotator;

    invoke-direct {v2, p0}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory$GuiEffectTreeAnnotator;-><init>(Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    return-object v0
.end method

.method public findInheritedEffectRange(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect$EffectRange;
    .locals 2
    .param p1, "declaringType"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "overridingMethod"    # Ljavax/lang/model/element/ExecutableElement;

    .line 410
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->findInheritedEffectRange(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;ZLcom/sun/source/tree/Tree;)Lorg/checkerframework/checker/guieffect/Effect$EffectRange;

    move-result-object v0

    return-object v0
.end method

.method public findInheritedEffectRange(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;ZLcom/sun/source/tree/Tree;)Lorg/checkerframework/checker/guieffect/Effect$EffectRange;
    .locals 23
    .param p1, "declaringType"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "overridingMethod"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "issueConflictWarning"    # Z
    .param p4, "errorNode"    # Lcom/sun/source/tree/Tree;

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    if-eqz v7, :cond_1f

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "uiOverride":Ljavax/lang/model/element/ExecutableElement;
    const/4 v2, 0x0

    .line 421
    .local v2, "safeOverride":Ljavax/lang/model/element/ExecutableElement;
    const/4 v3, 0x0

    .line 425
    .local v3, "polyOverride":Ljavax/lang/model/element/ExecutableElement;
    const-class v4, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    .line 426
    invoke-virtual {v0, v8, v4}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    if-nez v4, :cond_0

    .line 427
    invoke-virtual/range {p0 .. p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isUIType(Ljavax/lang/model/element/TypeElement;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-class v4, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    .line 428
    invoke-virtual {v0, v8, v4}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v10, v4

    .line 429
    .local v10, "isUI":Z
    const-class v4, Lorg/checkerframework/checker/guieffect/qual/PolyUIEffect;

    invoke-virtual {v0, v8, v4}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v11, v4

    .line 434
    .local v11, "isPolyUI":Z
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    move-object v12, v4

    .line 435
    .local v12, "superclass":Ljavax/lang/model/type/TypeMirror;
    :goto_2
    const-string v4, "override.effect.invalid.polymorphic"

    const-string v13, "override.effect.invalid"

    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v14

    sget-object v15, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v14, v15, :cond_9

    .line 436
    invoke-virtual {v0, v8, v12}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->findJavaOverride(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v14

    .line 437
    .local v14, "overrides":Ljavax/lang/model/element/ExecutableElement;
    if-eqz v14, :cond_8

    .line 438
    invoke-virtual {v0, v14}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclaredEffect(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect;

    move-result-object v15

    .line 439
    .local v15, "eff":Lorg/checkerframework/checker/guieffect/Effect;
    if-eqz v15, :cond_7

    .line 440
    invoke-virtual {v15}, Lorg/checkerframework/checker/guieffect/Effect;->isSafe()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 442
    move-object v2, v14

    .line 443
    if-eqz v10, :cond_3

    if-eqz p3, :cond_3

    .line 444
    iget-object v5, v0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v8, v7, v2, v12}, [Ljava/lang/Object;

    move-result-object v6

    .line 445
    invoke-static {v13, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 444
    invoke-virtual {v5, v6, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 453
    :cond_3
    if-eqz v11, :cond_8

    if-eqz p3, :cond_8

    .line 454
    iget-object v5, v0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v8, v7, v2, v12}, [Ljava/lang/Object;

    move-result-object v6

    .line 455
    invoke-static {v4, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    .line 454
    invoke-virtual {v5, v4, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_3

    .line 463
    :cond_4
    invoke-virtual {v15}, Lorg/checkerframework/checker/guieffect/Effect;->isUI()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 465
    move-object v1, v14

    goto :goto_3

    .line 467
    :cond_5
    invoke-virtual {v15}, Lorg/checkerframework/checker/guieffect/Effect;->isPoly()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 468
    move-object v3, v14

    goto :goto_3

    .line 467
    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 439
    :cond_7
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 491
    .end local v15    # "eff":Lorg/checkerframework/checker/guieffect/Effect;
    :cond_8
    :goto_3
    move-object v4, v12

    check-cast v4, Ljavax/lang/model/type/DeclaredType;

    .line 492
    .local v4, "decl":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v4}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/TypeElement;

    invoke-interface {v5}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v12

    .line 493
    .end local v4    # "decl":Ljavax/lang/model/type/DeclaredType;
    .end local v14    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    goto :goto_2

    .line 495
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v14

    .line 496
    .local v14, "annoDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v14}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->directSuperTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v15, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v1    # "uiOverride":Ljavax/lang/model/element/ExecutableElement;
    .end local v2    # "safeOverride":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "polyOverride":Ljavax/lang/model/element/ExecutableElement;
    .local v15, "uiOverride":Ljavax/lang/model/element/ExecutableElement;
    .local v17, "safeOverride":Ljavax/lang/model/element/ExecutableElement;
    .local v18, "polyOverride":Ljavax/lang/model/element/ExecutableElement;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 497
    .local v1, "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 498
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->findJavaOverride(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 499
    .local v2, "overrides":Ljavax/lang/model/element/ExecutableElement;
    if-eqz v2, :cond_14

    .line 500
    invoke-virtual {v0, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclaredEffect(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect;

    move-result-object v3

    .line 501
    .local v3, "eff":Lorg/checkerframework/checker/guieffect/Effect;
    invoke-virtual {v3}, Lorg/checkerframework/checker/guieffect/Effect;->isSafe()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 503
    move-object v6, v2

    .line 504
    .end local v17    # "safeOverride":Ljavax/lang/model/element/ExecutableElement;
    .local v6, "safeOverride":Ljavax/lang/model/element/ExecutableElement;
    if-eqz v10, :cond_a

    if-eqz p3, :cond_a

    .line 505
    move-object/from16 v19, v5

    iget-object v5, v0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-object/from16 v20, v12

    .end local v12    # "superclass":Ljavax/lang/model/type/TypeMirror;
    .local v20, "superclass":Ljavax/lang/model/type/TypeMirror;
    filled-new-array {v8, v7, v6, v1}, [Ljava/lang/Object;

    move-result-object v12

    .line 506
    invoke-static {v13, v12}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v12

    .line 505
    invoke-virtual {v5, v12, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_5

    .line 504
    .end local v20    # "superclass":Ljavax/lang/model/type/TypeMirror;
    .restart local v12    # "superclass":Ljavax/lang/model/type/TypeMirror;
    :cond_a
    move-object/from16 v19, v5

    move-object/from16 v20, v12

    .line 514
    .end local v12    # "superclass":Ljavax/lang/model/type/TypeMirror;
    .restart local v20    # "superclass":Ljavax/lang/model/type/TypeMirror;
    :goto_5
    if-eqz v11, :cond_b

    if-eqz p3, :cond_b

    .line 515
    iget-object v5, v0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v8, v7, v6, v1}, [Ljava/lang/Object;

    move-result-object v12

    .line 516
    invoke-static {v4, v12}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v12

    .line 515
    invoke-virtual {v5, v12, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 552
    .end local v1    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v2    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "eff":Lorg/checkerframework/checker/guieffect/Effect;
    :cond_b
    move-object/from16 v17, v6

    goto/16 :goto_8

    .line 524
    .end local v6    # "safeOverride":Ljavax/lang/model/element/ExecutableElement;
    .end local v20    # "superclass":Ljavax/lang/model/type/TypeMirror;
    .restart local v1    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v2    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    .restart local v3    # "eff":Lorg/checkerframework/checker/guieffect/Effect;
    .restart local v12    # "superclass":Ljavax/lang/model/type/TypeMirror;
    .restart local v17    # "safeOverride":Ljavax/lang/model/element/ExecutableElement;
    :cond_c
    move-object/from16 v19, v5

    move-object/from16 v20, v12

    .end local v12    # "superclass":Ljavax/lang/model/type/TypeMirror;
    .restart local v20    # "superclass":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/checker/guieffect/Effect;->isUI()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 526
    move-object v5, v2

    move-object v15, v5

    .end local v15    # "uiOverride":Ljavax/lang/model/element/ExecutableElement;
    .local v5, "uiOverride":Ljavax/lang/model/element/ExecutableElement;
    goto/16 :goto_8

    .line 528
    .end local v5    # "uiOverride":Ljavax/lang/model/element/ExecutableElement;
    .restart local v15    # "uiOverride":Ljavax/lang/model/element/ExecutableElement;
    :cond_d
    invoke-virtual {v3}, Lorg/checkerframework/checker/guieffect/Effect;->isPoly()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 529
    move-object v5, v2

    .line 530
    .end local v18    # "polyOverride":Ljavax/lang/model/element/ExecutableElement;
    .local v5, "polyOverride":Ljavax/lang/model/element/ExecutableElement;
    if-eqz v10, :cond_12

    if-eqz p3, :cond_12

    .line 531
    move-object v6, v1

    .line 535
    .local v6, "supdecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    nop

    .line 536
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isAnonymousType(Ljavax/lang/model/element/TypeElement;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 537
    invoke-virtual/range {p0 .. p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v12

    move-object/from16 v21, v1

    .end local v1    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .local v21, "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    const-class v1, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-virtual {v12, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->uiAnonClasses:Ljava/util/Set;

    .line 538
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    goto :goto_6

    .line 536
    .end local v21    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v1    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_f
    move-object/from16 v21, v1

    .line 538
    .end local v1    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v21    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_10
    const/4 v1, 0x0

    .line 539
    .local v1, "isAnonInstantiation":Z
    :goto_6
    if-nez v1, :cond_11

    const-class v12, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-virtual {v6, v12}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 540
    iget-object v12, v0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move/from16 v18, v1

    .end local v1    # "isAnonInstantiation":Z
    .local v18, "isAnonInstantiation":Z
    filled-new-array {v8, v7, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 541
    move-object/from16 v22, v2

    .end local v2    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    .local v22, "overrides":Ljavax/lang/model/element/ExecutableElement;
    const-string v2, "override.effect.invalid.nonui"

    invoke-static {v2, v1}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    .line 540
    invoke-virtual {v12, v1, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_7

    .line 539
    .end local v18    # "isAnonInstantiation":Z
    .end local v22    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    .restart local v1    # "isAnonInstantiation":Z
    .restart local v2    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    :cond_11
    move/from16 v18, v1

    move-object/from16 v22, v2

    .end local v1    # "isAnonInstantiation":Z
    .end local v2    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    .restart local v18    # "isAnonInstantiation":Z
    .restart local v22    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    goto :goto_7

    .line 530
    .end local v6    # "supdecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v18    # "isAnonInstantiation":Z
    .end local v21    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v22    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    .local v1, "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v2    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    :cond_12
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .line 552
    .end local v1    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v2    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "eff":Lorg/checkerframework/checker/guieffect/Effect;
    :goto_7
    move-object/from16 v18, v5

    goto :goto_8

    .line 528
    .end local v5    # "polyOverride":Ljavax/lang/model/element/ExecutableElement;
    .restart local v1    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v2    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    .restart local v3    # "eff":Lorg/checkerframework/checker/guieffect/Effect;
    .local v18, "polyOverride":Ljavax/lang/model/element/ExecutableElement;
    :cond_13
    move-object/from16 v21, v1

    .end local v1    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v21    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 499
    .end local v3    # "eff":Lorg/checkerframework/checker/guieffect/Effect;
    .end local v20    # "superclass":Ljavax/lang/model/type/TypeMirror;
    .end local v21    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v1    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .restart local v12    # "superclass":Ljavax/lang/model/type/TypeMirror;
    :cond_14
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v12

    .line 552
    .end local v1    # "ty":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v2    # "overrides":Ljavax/lang/model/element/ExecutableElement;
    .end local v12    # "superclass":Ljavax/lang/model/type/TypeMirror;
    .restart local v20    # "superclass":Ljavax/lang/model/type/TypeMirror;
    :goto_8
    move-object/from16 v5, v19

    move-object/from16 v12, v20

    goto/16 :goto_4

    .line 555
    .end local v20    # "superclass":Ljavax/lang/model/type/TypeMirror;
    .restart local v12    # "superclass":Ljavax/lang/model/type/TypeMirror;
    :cond_15
    move-object/from16 v20, v12

    .end local v12    # "superclass":Ljavax/lang/model/type/TypeMirror;
    .restart local v20    # "superclass":Ljavax/lang/model/type/TypeMirror;
    if-eqz v15, :cond_16

    if-eqz v17, :cond_16

    if-eqz p3, :cond_16

    .line 558
    iget-object v12, v0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 563
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 564
    invoke-interface {v15}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 565
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 566
    invoke-interface/range {v17 .. v17}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 559
    const-string v2, "override.effect.warning.inheritance"

    invoke-static {v2, v1}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    .line 558
    invoke-virtual {v12, v1, v9}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 571
    :cond_16
    const/4 v1, 0x0

    if-eqz v17, :cond_17

    .line 572
    new-instance v2, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v3, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    invoke-direct {v2, v3}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    goto :goto_9

    .line 573
    :cond_17
    if-eqz v18, :cond_18

    .line 574
    new-instance v2, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v3, Lorg/checkerframework/checker/guieffect/qual/PolyUIEffect;

    invoke-direct {v2, v3}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    goto :goto_9

    .line 575
    :cond_18
    if-eqz v15, :cond_19

    new-instance v2, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v3, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    invoke-direct {v2, v3}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    goto :goto_9

    :cond_19
    move-object v2, v1

    :goto_9
    nop

    .line 577
    .local v2, "min":Lorg/checkerframework/checker/guieffect/Effect;
    if-eqz v15, :cond_1a

    .line 578
    new-instance v3, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v4, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    invoke-direct {v3, v4}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    goto :goto_a

    .line 579
    :cond_1a
    if-eqz v18, :cond_1b

    .line 580
    new-instance v3, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v4, Lorg/checkerframework/checker/guieffect/qual/PolyUIEffect;

    invoke-direct {v3, v4}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    goto :goto_a

    .line 581
    :cond_1b
    if-eqz v17, :cond_1c

    new-instance v3, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v4, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    invoke-direct {v3, v4}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    goto :goto_a

    :cond_1c
    move-object v3, v1

    :goto_a
    nop

    .line 582
    .local v3, "max":Lorg/checkerframework/checker/guieffect/Effect;
    iget-boolean v4, v0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v4, :cond_1d

    .line 583
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to have inheritance pair ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 595
    :cond_1d
    if-nez v2, :cond_1e

    if-nez v3, :cond_1e

    .line 596
    return-object v1

    .line 598
    :cond_1e
    new-instance v1, Lorg/checkerframework/checker/guieffect/Effect$EffectRange;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/checker/guieffect/Effect$EffectRange;-><init>(Lorg/checkerframework/checker/guieffect/Effect;Lorg/checkerframework/checker/guieffect/Effect;)V

    return-object v1

    .line 418
    .end local v2    # "min":Lorg/checkerframework/checker/guieffect/Effect;
    .end local v3    # "max":Lorg/checkerframework/checker/guieffect/Effect;
    .end local v10    # "isUI":Z
    .end local v11    # "isPolyUI":Z
    .end local v14    # "annoDecl":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v15    # "uiOverride":Ljavax/lang/model/element/ExecutableElement;
    .end local v17    # "safeOverride":Ljavax/lang/model/element/ExecutableElement;
    .end local v18    # "polyOverride":Ljavax/lang/model/element/ExecutableElement;
    .end local v20    # "superclass":Ljavax/lang/model/type/TypeMirror;
    :cond_1f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public findJavaOverride(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/ExecutableElement;
    .locals 7
    .param p1, "overrider"    # Ljavax/lang/model/element/ExecutableElement;
    .param p2, "parentType"    # Ljavax/lang/model/type/TypeMirror;

    .line 81
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_6

    .line 82
    iget-boolean v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Searching for overridden methods from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 87
    .local v0, "overriderClass":Ljavax/lang/model/element/TypeElement;
    move-object v1, p2

    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 88
    .local v1, "elem":Ljavax/lang/model/element/TypeElement;
    iget-boolean v2, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v2, :cond_1

    .line 89
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "necessary TypeElements acquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    :cond_1
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 93
    .local v3, "e":Ljavax/lang/model/element/Element;
    iget-boolean v4, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v4, :cond_2

    .line 94
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Considering element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :cond_2
    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-eq v4, v5, :cond_3

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v4, v5, :cond_4

    .line 97
    :cond_3
    move-object v4, v3

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 98
    .local v4, "ex":Ljavax/lang/model/element/ExecutableElement;
    iget-object v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v5, p1, v4, v0}, Ljavax/lang/model/util/Elements;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result v5

    .line 99
    .local v5, "overrides":Z
    if-eqz v5, :cond_4

    .line 100
    return-object v4

    .line 103
    .end local v3    # "e":Ljavax/lang/model/element/Element;
    .end local v4    # "ex":Ljavax/lang/model/element/ExecutableElement;
    .end local v5    # "overrides":Z
    :cond_4
    goto :goto_0

    .line 104
    :cond_5
    iget-boolean v2, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v2, :cond_6

    .line 105
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done considering elements of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    .end local v0    # "overriderClass":Ljavax/lang/model/element/TypeElement;
    .end local v1    # "elem":Ljavax/lang/model/element/TypeElement;
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 377
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 378
    .local v0, "typeMirror":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v1, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    return-object v0

    .line 383
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isDirectlyMarkedUIThroughInference(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_2

    .line 385
    :cond_1
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->PARENTHESIZED:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_2

    .line 386
    move-object v1, p1

    check-cast v1, Lcom/sun/source/tree/ParenthesizedTree;

    .line 387
    .local v1, "parenthesizedTree":Lcom/sun/source/tree/ParenthesizedTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 388
    .end local v1    # "parenthesizedTree":Lcom/sun/source/tree/ParenthesizedTree;
    :cond_2
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_6

    .line 389
    move-object v1, p1

    check-cast v1, Lcom/sun/source/tree/ConditionalExpressionTree;

    .line 390
    .local v1, "cet":Lcom/sun/source/tree/ConditionalExpressionTree;
    nop

    .line 391
    invoke-interface {v1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 392
    invoke-interface {v1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    const-class v5, Lorg/checkerframework/checker/guieffect/qual/UI;

    .line 393
    invoke-virtual {v2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    .line 394
    .local v2, "isTrueOperandUI":Z
    :goto_0
    nop

    .line 395
    invoke-interface {v1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 396
    invoke-interface {v1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    const-class v6, Lorg/checkerframework/checker/guieffect/qual/UI;

    .line 397
    invoke-virtual {v5, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    .line 398
    .local v3, "isFalseOperandUI":Z
    :goto_1
    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    .line 399
    :cond_5
    iget-object v4, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v5, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-static {v4, v5}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 404
    .end local v1    # "cet":Lcom/sun/source/tree/ConditionalExpressionTree;
    .end local v2    # "isTrueOperandUI":Z
    .end local v3    # "isFalseOperandUI":Z
    :cond_6
    :goto_2
    return-object v0
.end method

.method public getComputedEffectAtCallsite(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "callerReceiver"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "methodElt"    # Ljavax/lang/model/element/ExecutableElement;

    .line 299
    invoke-virtual {p0, p3}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclaredEffect(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect;

    move-result-object v0

    .line 300
    .local v0, "targetEffect":Lorg/checkerframework/checker/guieffect/Effect;
    invoke-virtual {v0}, Lorg/checkerframework/checker/guieffect/Effect;->isPoly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "srcType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_0

    .line 303
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v2}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 304
    .local v2, "src":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {p0, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 305
    .end local v2    # "src":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_3

    .line 307
    if-nez p2, :cond_1

    .line 309
    return-object v0

    .line 311
    :cond_1
    move-object v1, p2

    .line 317
    :goto_0
    const-class v2, Lorg/checkerframework/checker/guieffect/qual/AlwaysSafe;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    new-instance v2, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v3, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    invoke-direct {v2, v3}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    move-object v0, v2

    goto :goto_1

    .line 319
    :cond_2
    const-class v2, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 320
    new-instance v2, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v3, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    invoke-direct {v2, v3}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    move-object v0, v2

    goto :goto_1

    .line 313
    :cond_3
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected getMethodSelect() kind at callsite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    .end local v1    # "srcType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_4
    :goto_1
    return-object v0
.end method

.method public getDeclaredEffect(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect;
    .locals 13
    .param p1, "methodElt"    # Ljavax/lang/model/element/ExecutableElement;

    .line 212
    iget-boolean v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin mayHaveUIEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    :cond_0
    const-class v0, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 216
    .local v0, "targetUIP":Ljavax/lang/model/element/AnnotationMirror;
    const-class v1, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 217
    .local v1, "targetSafeP":Ljavax/lang/model/element/AnnotationMirror;
    const-class v2, Lorg/checkerframework/checker/guieffect/qual/PolyUIEffect;

    invoke-virtual {p0, p1, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 218
    .local v2, "targetPolyP":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    .line 219
    .local v3, "targetClassElt":Ljavax/lang/model/element/TypeElement;
    nop

    .line 220
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotations(Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v4

    .line 221
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    const-string v5, "@android.support.annotation.MainThread"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 224
    .local v4, "hasMainThreadAnnot":Z
    iget-boolean v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v5, :cond_1

    .line 225
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "targetClassElt found"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    :cond_1
    if-eqz v1, :cond_3

    .line 230
    iget-boolean v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v5, :cond_2

    .line 231
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Method marked @SafeEffect"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    :cond_2
    new-instance v5, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v6, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    invoke-direct {v5, v6}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    return-object v5

    .line 234
    :cond_3
    if-nez v0, :cond_d

    if-eqz v4, :cond_4

    goto/16 :goto_3

    .line 239
    :cond_4
    if-eqz v2, :cond_6

    .line 240
    iget-boolean v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v5, :cond_5

    .line 241
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Method marked @PolyUIEffect"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    :cond_5
    new-instance v5, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v6, Lorg/checkerframework/checker/guieffect/qual/PolyUIEffect;

    invoke-direct {v5, v6}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    return-object v5

    .line 249
    :cond_6
    invoke-virtual {p0, v3}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isUIType(Ljavax/lang/model/element/TypeElement;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 251
    new-instance v5, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v6, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    invoke-direct {v5, v6}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    return-object v5

    .line 258
    :cond_7
    invoke-static {v3}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isAnonymousType(Ljavax/lang/model/element/TypeElement;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 259
    const/4 v5, 0x1

    .line 260
    .local v5, "canInheritParentEffects":Z
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/type/DeclaredType;

    .line 261
    .local v6, "directSuper":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v6}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/TypeElement;

    .line 263
    .local v7, "superElt":Ljavax/lang/model/element/TypeElement;
    const-class v8, Lorg/checkerframework/checker/guieffect/qual/PolyUIType;

    invoke-virtual {p0, v7, v8}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 264
    invoke-static {v6}, Lorg/checkerframework/javacutil/TypesUtils;->isObject(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 265
    const/4 v5, 0x0

    goto :goto_1

    .line 267
    :cond_8
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/type/TypeMirror;

    .line 268
    .local v9, "ifaceM":Ljavax/lang/model/type/TypeMirror;
    move-object v10, v9

    check-cast v10, Ljavax/lang/model/type/DeclaredType;

    .line 269
    .local v10, "iface":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v10}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v11

    check-cast v11, Ljavax/lang/model/element/TypeElement;

    .line 270
    .local v11, "ifaceElt":Ljavax/lang/model/element/TypeElement;
    const-class v12, Lorg/checkerframework/checker/guieffect/qual/PolyUIType;

    invoke-virtual {p0, v11, v12}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 271
    const/4 v5, 0x0

    .line 273
    .end local v9    # "ifaceM":Ljavax/lang/model/type/TypeMirror;
    .end local v10    # "iface":Ljavax/lang/model/type/DeclaredType;
    .end local v11    # "ifaceElt":Ljavax/lang/model/element/TypeElement;
    :cond_9
    goto :goto_0

    .line 276
    :cond_a
    :goto_1
    if-eqz v5, :cond_c

    .line 277
    invoke-virtual {p0, v3, p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->findInheritedEffectRange(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect$EffectRange;

    move-result-object v8

    .line 278
    .local v8, "r":Lorg/checkerframework/checker/guieffect/Effect$EffectRange;
    if-eqz v8, :cond_b

    iget-object v9, v8, Lorg/checkerframework/checker/guieffect/Effect$EffectRange;->min:Lorg/checkerframework/checker/guieffect/Effect;

    iget-object v10, v8, Lorg/checkerframework/checker/guieffect/Effect$EffectRange;->max:Lorg/checkerframework/checker/guieffect/Effect;

    invoke-static {v9, v10}, Lorg/checkerframework/checker/guieffect/Effect;->min(Lorg/checkerframework/checker/guieffect/Effect;Lorg/checkerframework/checker/guieffect/Effect;)Lorg/checkerframework/checker/guieffect/Effect;

    move-result-object v9

    goto :goto_2

    :cond_b
    new-instance v9, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v10, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    invoke-direct {v9, v10}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    :goto_2
    return-object v9

    .line 282
    .end local v5    # "canInheritParentEffects":Z
    .end local v6    # "directSuper":Ljavax/lang/model/type/DeclaredType;
    .end local v7    # "superElt":Ljavax/lang/model/element/TypeElement;
    .end local v8    # "r":Lorg/checkerframework/checker/guieffect/Effect$EffectRange;
    :cond_c
    new-instance v5, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v6, Lorg/checkerframework/checker/guieffect/qual/SafeEffect;

    invoke-direct {v5, v6}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    return-object v5

    .line 235
    :cond_d
    :goto_3
    iget-boolean v5, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v5, :cond_e

    .line 236
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Method marked @UIEffect"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    :cond_e
    new-instance v5, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v6, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    invoke-direct {v5, v6}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    return-object v5
.end method

.method protected getDefaultTypeDeclarationBounds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotations()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInferedEffectForLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;)Lorg/checkerframework/checker/guieffect/Effect;
    .locals 3
    .param p1, "lambdaTree"    # Lcom/sun/source/tree/LambdaExpressionTree;

    .line 340
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->uiLambdas:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Lorg/checkerframework/checker/guieffect/Effect;

    const-class v1, Lorg/checkerframework/checker/guieffect/qual/UIEffect;

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/guieffect/Effect;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 345
    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->findFunction(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 346
    .local v0, "functionalInterfaceMethodElt":Ljavax/lang/model/element/ExecutableElement;
    iget-boolean v1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v1, :cond_1

    .line 347
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "functionalInterfaceMethodElt found for lambda"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    :cond_1
    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclaredEffect(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/checker/guieffect/Effect;

    move-result-object v1

    return-object v1
.end method

.method public isDirectlyMarkedUIThroughInference(Lcom/sun/source/tree/Tree;)Z
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 363
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->uiLambdas:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lcom/sun/source/tree/LambdaExpressionTree;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 365
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    .line 366
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 367
    .local v0, "typeMirror":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 368
    iget-object v1, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->uiAnonClasses:Ljava/util/Set;

    .line 369
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 368
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 372
    .end local v0    # "typeMirror":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isPolymorphicType(Ljavax/lang/model/element/TypeElement;)Z
    .locals 2
    .param p1, "cls"    # Ljavax/lang/model/element/TypeElement;

    .line 112
    if-eqz p1, :cond_2

    .line 113
    const-class v0, Lorg/checkerframework/checker/guieffect/qual/PolyUIType;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-nez v0, :cond_1

    .line 114
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    const-class v1, Lorg/checkerframework/checker/guieffect/qual/PolyUI;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 113
    :goto_1
    return v0

    .line 112
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isUIType(Ljavax/lang/model/element/TypeElement;)Z
    .locals 11
    .param p1, "cls"    # Ljavax/lang/model/element/TypeElement;

    .line 118
    iget-boolean v0, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isUIType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    const-class v1, Lorg/checkerframework/checker/guieffect/qual/UI;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    .line 122
    .local v0, "targetClassUIP":Z
    const-class v1, Lorg/checkerframework/checker/guieffect/qual/UIType;

    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 123
    .local v1, "targetClassUITypeP":Ljavax/lang/model/element/AnnotationMirror;
    const-class v2, Lorg/checkerframework/checker/guieffect/qual/SafeType;

    invoke-virtual {p0, p1, v2}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 125
    .local v2, "targetClassSafeTypeP":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 126
    return v3

    .line 129
    :cond_1
    const/4 v4, 0x1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v4

    .line 131
    .local v5, "hasUITypeDirectly":Z
    :goto_1
    if-eqz v5, :cond_4

    .line 132
    return v4

    .line 138
    :cond_4
    invoke-static {p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->isAnonymousType(Ljavax/lang/model/element/TypeElement;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 140
    iget-object v6, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->uiAnonClasses:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 141
    return v4

    .line 143
    :cond_5
    return v3

    .line 150
    :cond_6
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v6

    const-class v7, Lorg/checkerframework/checker/guieffect/qual/AlwaysSafe;

    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v6

    .line 151
    .local v6, "targetClassSafeP":Z
    if-eqz v6, :cond_7

    .line 152
    return v3

    .line 156
    :cond_7
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v7

    .line 158
    .local v7, "packageP":Ljavax/lang/model/element/Element;
    if-eqz v7, :cond_a

    .line 159
    iget-boolean v8, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v8, :cond_8

    .line 160
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    :cond_8
    const-class v8, Lorg/checkerframework/checker/guieffect/qual/UIPackage;

    invoke-virtual {p0, v7, v8}, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 163
    iget-boolean v3, p0, Lorg/checkerframework/checker/guieffect/GuiEffectTypeFactory;->debugSpew:Z

    if-eqz v3, :cond_9

    .line 164
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is annotated @UIPackage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    :cond_9
    return v4

    .line 170
    :cond_a
    return v3
.end method
