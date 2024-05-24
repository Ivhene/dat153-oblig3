.class Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "RegexAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegexTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 266
    iput-object p1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 267
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 268
    return-void
.end method

.method private createPartialRegexAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "partial"    # Ljava/lang/String;

    .line 396
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-static {v1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->access$400(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    const-class v2, Lorg/checkerframework/checker/regex/qual/PartialRegex;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 397
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 398
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private getMinimumRegexCount(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Integer;
    .locals 7
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 421
    const-class v0, Lorg/checkerframework/checker/regex/qual/Regex;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 422
    .local v0, "primaryRegexAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_3

    .line 423
    sget-object v1, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 447
    const/4 v1, 0x0

    return-object v1

    .line 432
    :pswitch_0
    const/4 v1, 0x0

    .line 434
    .local v1, "maxBound":Ljava/lang/Integer;
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 435
    .local v3, "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v3}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getMinimumRegexCount(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Integer;

    move-result-object v4

    .line 436
    .local v4, "boundRegexNum":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 437
    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 438
    :cond_0
    move-object v1, v4

    .line 441
    .end local v3    # "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "boundRegexNum":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 442
    :cond_2
    return-object v1

    .line 428
    .end local v1    # "maxBound":Ljava/lang/Integer;
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 429
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 428
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getMinimumRegexCount(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 425
    :pswitch_2
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getMinimumRegexCount(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 450
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getGroupCount(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPartialRegexValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 403
    const-class v0, Lorg/checkerframework/checker/regex/qual/PartialRegex;

    .line 405
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 404
    invoke-static {v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 406
    invoke-static {v1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->access$500(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationValue;

    .line 407
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 403
    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 264
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 17
    .param p1, "tree"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEX:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/javacutil/TreeUtils;->isStringConcatenation(Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 302
    iget-object v2, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 303
    .local v2, "lExpr":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 305
    .local v3, "rExpr":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {v0, v2}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getMinimumRegexCount(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Integer;

    move-result-object v4

    .line 306
    .local v4, "lGroupCount":Ljava/lang/Integer;
    invoke-direct {v0, v3}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getMinimumRegexCount(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Integer;

    move-result-object v5

    .line 307
    .local v5, "rGroupCount":Ljava/lang/Integer;
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    .line 308
    .local v8, "lExprRE":Z
    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    .line 309
    .local v6, "rExprRE":Z
    :goto_1
    const-class v7, Lorg/checkerframework/checker/regex/qual/PartialRegex;

    invoke-virtual {v2, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v7

    .line 310
    .local v7, "lExprPart":Z
    const-class v9, Lorg/checkerframework/checker/regex/qual/PartialRegex;

    invoke-virtual {v3, v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v9

    .line 311
    .local v9, "rExprPart":Z
    const-class v10, Lorg/checkerframework/checker/regex/qual/PolyRegex;

    invoke-virtual {v2, v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v10

    .line 312
    .local v10, "lExprPoly":Z
    const-class v11, Lorg/checkerframework/checker/regex/qual/PolyRegex;

    invoke-virtual {v3, v11}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v11

    .line 314
    .local v11, "rExprPoly":Z
    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    .line 316
    iget-object v12, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object v12, v12, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEX:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v12}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 318
    iget-object v12, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v12, v13}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->createRegexAnnotation(I)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v12

    invoke-virtual {v1, v12}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto/16 :goto_4

    .line 319
    :cond_2
    if-eqz v10, :cond_3

    if-nez v11, :cond_5

    :cond_3
    if-eqz v10, :cond_4

    if-nez v6, :cond_5

    :cond_4
    if-eqz v8, :cond_6

    if-eqz v11, :cond_6

    .line 322
    :cond_5
    const-class v12, Lorg/checkerframework/checker/regex/qual/PolyRegex;

    invoke-virtual {v1, v12}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 323
    :cond_6
    if-eqz v7, :cond_8

    if-eqz v9, :cond_8

    .line 324
    invoke-direct {v0, v2}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getPartialRegexValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v12

    .line 325
    .local v12, "lRegex":Ljava/lang/String;
    invoke-direct {v0, v3}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getPartialRegexValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v13

    .line 326
    .local v13, "rRegex":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 327
    .local v14, "concat":Ljava/lang/String;
    invoke-static {v14}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->access$000(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 328
    invoke-static {v14}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getGroupCount(Ljava/lang/String;)I

    move-result v15

    .line 329
    .local v15, "groupCount":I
    move-object/from16 v16, v4

    .end local v4    # "lGroupCount":Ljava/lang/Integer;
    .local v16, "lGroupCount":Ljava/lang/Integer;
    iget-object v4, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-virtual {v4, v15}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->createRegexAnnotation(I)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 330
    .end local v15    # "groupCount":I
    goto :goto_2

    .line 331
    .end local v16    # "lGroupCount":Ljava/lang/Integer;
    .restart local v4    # "lGroupCount":Ljava/lang/Integer;
    :cond_7
    move-object/from16 v16, v4

    .end local v4    # "lGroupCount":Ljava/lang/Integer;
    .restart local v16    # "lGroupCount":Ljava/lang/Integer;
    invoke-direct {v0, v14}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->createPartialRegexAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 333
    .end local v12    # "lRegex":Ljava/lang/String;
    .end local v13    # "rRegex":Ljava/lang/String;
    .end local v14    # "concat":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 323
    .end local v16    # "lGroupCount":Ljava/lang/Integer;
    .restart local v4    # "lGroupCount":Ljava/lang/Integer;
    :cond_8
    move-object/from16 v16, v4

    .line 333
    .end local v4    # "lGroupCount":Ljava/lang/Integer;
    .restart local v16    # "lGroupCount":Ljava/lang/Integer;
    const-string v4, "e"

    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    .line 334
    invoke-direct {v0, v3}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getPartialRegexValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v12

    .line 335
    .local v12, "rRegex":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "concat":Ljava/lang/String;
    invoke-direct {v0, v4}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->createPartialRegexAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .end local v4    # "concat":Ljava/lang/String;
    .end local v12    # "rRegex":Ljava/lang/String;
    goto :goto_3

    .line 337
    :cond_9
    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    .line 338
    invoke-direct {v0, v2}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getPartialRegexValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v12

    .line 339
    .local v12, "lRegex":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 340
    .restart local v4    # "concat":Ljava/lang/String;
    invoke-direct {v0, v4}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->createPartialRegexAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_4

    .line 337
    .end local v4    # "concat":Ljava/lang/String;
    .end local v12    # "lRegex":Ljava/lang/String;
    :cond_a
    :goto_3
    nop

    .line 343
    .end local v2    # "lExpr":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "rExpr":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "rGroupCount":Ljava/lang/Integer;
    .end local v6    # "rExprRE":Z
    .end local v7    # "lExprPart":Z
    .end local v8    # "lExprRE":Z
    .end local v9    # "rExprPart":Z
    .end local v10    # "lExprPoly":Z
    .end local v11    # "rExprPoly":Z
    .end local v16    # "lGroupCount":Ljava/lang/Integer;
    :cond_b
    :goto_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 264
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 349
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isStringCompoundConcatenation(Lcom/sun/source/tree/CompoundAssignmentTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 351
    .local v0, "rhs":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 353
    .local v1, "lhs":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getMinimumRegexCount(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Integer;

    move-result-object v2

    .line 354
    .local v2, "lhsRegexCount":Ljava/lang/Integer;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getMinimumRegexCount(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Integer;

    move-result-object v3

    .line 356
    .local v3, "rhsRegexCount":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 357
    iget-object v4, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    const-class v5, Lorg/checkerframework/checker/regex/qual/Regex;

    invoke-virtual {v1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getGroupCount(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v4

    .line 358
    .local v4, "lCount":I
    iget-object v5, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    const-class v6, Lorg/checkerframework/checker/regex/qual/Regex;

    invoke-virtual {v0, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getGroupCount(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v5

    .line 359
    .local v5, "rCount":I
    iget-object v6, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object v6, v6, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEX:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 360
    iget-object v6, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    add-int v7, v4, v5

    invoke-virtual {v6, v7}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->createRegexAnnotation(I)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 363
    .end local v0    # "rhs":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "lhs":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "lhsRegexCount":Ljava/lang/Integer;
    .end local v3    # "rhsRegexCount":Ljava/lang/Integer;
    .end local v4    # "lCount":I
    .end local v5    # "rCount":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 264
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/LiteralTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 276
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEX:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "regex":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    .line 279
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->CHAR_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_1

    .line 281
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 284
    invoke-static {v0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->access$000(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    invoke-static {v0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getGroupCount(Ljava/lang/String;)I

    move-result v1

    .line 286
    .local v1, "groupCount":I
    iget-object v2, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-virtual {v2, v1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->createRegexAnnotation(I)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 287
    .end local v1    # "groupCount":I
    goto :goto_1

    .line 288
    :cond_2
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->createPartialRegexAnnotation(Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 292
    .end local v0    # "regex":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 264
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 374
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-static {v0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->access$100(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-static {v1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->access$200(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 377
    .local v0, "arg0":Lcom/sun/source/tree/ExpressionTree;
    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 378
    .local v1, "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->getMinimumRegexCount(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Integer;

    move-result-object v2

    .line 379
    .local v2, "regexCount":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 380
    invoke-virtual {v3, v0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    const-class v4, Lorg/checkerframework/checker/regex/qual/RegexBottom;

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 382
    .local v3, "bottomAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v2, :cond_0

    .line 385
    iget-object v4, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->createRegexAnnotation(I)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 386
    :cond_0
    if-eqz v3, :cond_1

    .line 387
    iget-object v4, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;->this$0:Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 388
    invoke-static {v4}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->access$300(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;)Ljavax/lang/model/util/Elements;

    move-result-object v4

    const-class v5, Lorg/checkerframework/checker/regex/qual/RegexBottom;

    invoke-static {v4, v5}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 387
    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 391
    .end local v0    # "arg0":Lcom/sun/source/tree/ExpressionTree;
    .end local v1    # "argType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "regexCount":Ljava/lang/Integer;
    .end local v3    # "bottomAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
