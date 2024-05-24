.class Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "UnitsAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnitsTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;)V
    .locals 0
    .param p2, "atypeFactory"    # Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    .line 403
    iput-object p1, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    .line 404
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 405
    return-void
.end method

.method private useUnitsRelation(Lcom/sun/source/tree/Tree$Kind;Lorg/checkerframework/checker/units/UnitsRelations;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "ur"    # Lorg/checkerframework/checker/units/UnitsRelations;
    .param p3, "lht"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "rht"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "res":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz p2, :cond_0

    .line 519
    sget-object v1, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {p1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 524
    :pswitch_0
    invoke-interface {p2, p3, p4}, Lorg/checkerframework/checker/units/UnitsRelations;->multiplication(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 525
    goto :goto_0

    .line 521
    :pswitch_1
    invoke-interface {p2, p3, p4}, Lorg/checkerframework/checker/units/UnitsRelations;->division(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 522
    nop

    .line 530
    :cond_0
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 401
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 11
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 409
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 410
    .local v0, "lht":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 411
    .local v1, "rht":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    .line 414
    .local v2, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-static {v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->getPrefix(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/checker/units/qual/Prefix;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/checker/units/qual/Prefix;->one:Lorg/checkerframework/checker/units/qual/Prefix;

    if-ne v3, v4, :cond_0

    .line 415
    iget-object v3, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-static {v3}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;)Ljavax/lang/model/util/Elements;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->removePrefix(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 417
    :cond_0
    invoke-static {v1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->getPrefix(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/checker/units/qual/Prefix;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/checker/units/qual/Prefix;->one:Lorg/checkerframework/checker/units/qual/Prefix;

    if-ne v3, v4, :cond_1

    .line 418
    iget-object v3, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-static {v3}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->access$100(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;)Ljavax/lang/model/util/Elements;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->removePrefix(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 421
    :cond_1
    const/4 v3, 0x0

    .line 422
    .local v3, "bestres":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->getUnitsRel()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/checker/units/UnitsRelations;

    .line 423
    .local v5, "ur":Lorg/checkerframework/checker/units/UnitsRelations;
    invoke-direct {p0, v2, v5, v0, v1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->useUnitsRelation(Lcom/sun/source/tree/Tree$Kind;Lorg/checkerframework/checker/units/UnitsRelations;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 425
    .local v7, "res":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 426
    iget-object v4, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-static {v4}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->access$200(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;)Lorg/checkerframework/common/basetype/BaseTypeChecker;

    move-result-object v4

    sget-object v8, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UnitsRelation mismatch, taking neither! Previous: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and current: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9, v10}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    return-object v6

    .line 435
    :cond_2
    if-eqz v7, :cond_3

    .line 436
    move-object v3, v7

    .line 438
    .end local v5    # "ur":Lorg/checkerframework/checker/units/UnitsRelations;
    .end local v7    # "res":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_0

    .line 440
    :cond_4
    if-eqz v3, :cond_5

    .line 441
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto/16 :goto_1

    .line 446
    :cond_5
    sget-object v4, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 491
    :pswitch_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 492
    goto/16 :goto_1

    .line 475
    :pswitch_1
    invoke-static {v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 477
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    goto/16 :goto_1

    .line 478
    :cond_6
    invoke-static {v1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 480
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    goto :goto_1

    .line 485
    :cond_7
    iget-object v4, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->mixedUnits:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 487
    goto :goto_1

    .line 458
    :pswitch_2
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 460
    iget-object v4, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->TOP:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 461
    :cond_8
    invoke-static {v1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 463
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    goto :goto_1

    .line 464
    :cond_9
    invoke-static {v0}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoUnits(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 466
    iget-object v4, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->mixedUnits:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 471
    :cond_a
    iget-object v4, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->mixedUnits:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 473
    goto :goto_1

    .line 449
    :pswitch_3
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 451
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    goto :goto_1

    .line 454
    :cond_b
    iget-object v4, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->mixedUnits:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 456
    nop

    .line 499
    :goto_1
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 401
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 504
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 505
    .local v0, "var":Lcom/sun/source/tree/ExpressionTree;
    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 507
    .local v1, "varType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 508
    const/4 v2, 0x0

    return-object v2
.end method
