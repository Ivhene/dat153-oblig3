.class public abstract Lannotator/find/Insertion;
.super Ljava/lang/Object;
.source "Insertion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lannotator/find/Insertion$Kind;
    }
.end annotation


# static fields
.field protected static alwaysQualify:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final criteria:Lannotator/find/Criteria;

.field private inserted:Z

.field protected packageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final separateLine:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lannotator/find/Insertion;->alwaysQualify:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lannotator/find/Criteria;Z)V
    .locals 1
    .param p1, "criteria"    # Lannotator/find/Criteria;
    .param p2, "separateLine"    # Z

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lannotator/find/Insertion;->criteria:Lannotator/find/Criteria;

    .line 66
    iput-boolean p2, p0, Lannotator/find/Insertion;->separateLine:Z

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lannotator/find/Insertion;->packageNames:Ljava/util/Set;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lannotator/find/Insertion;->inserted:Z

    .line 69
    return-void
.end method

.method public static decorateType(Ljava/util/List;Lscenelib/type/Type;)V
    .locals 1
    .param p1, "outerType"    # Lscenelib/type/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;",
            "Lscenelib/type/Type;",
            ")V"
        }
    .end annotation

    .line 396
    .local p0, "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lannotator/find/Insertion;->decorateType(Ljava/util/List;Lscenelib/type/Type;Lscenelib/annotations/io/ASTPath;)V

    .line 397
    return-void
.end method

.method public static decorateType(Ljava/util/List;Lscenelib/type/Type;Lscenelib/annotations/io/ASTPath;)V
    .locals 11
    .param p1, "outerType"    # Lscenelib/type/Type;
    .param p2, "outerPath"    # Lscenelib/annotations/io/ASTPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;",
            "Lscenelib/type/Type;",
            "Lscenelib/annotations/io/ASTPath;",
            ")V"
        }
    .end annotation

    .line 401
    .local p0, "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lannotator/find/Insertion;

    .line 405
    .local v1, "innerInsertion":Lannotator/find/Insertion;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lannotator/find/Insertion;->setInserted(Z)V

    .line 408
    :try_start_0
    invoke-virtual {v1}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v2

    sget-object v3, Lannotator/find/Insertion$Kind;->ANNOTATION:Lannotator/find/Insertion$Kind;

    if-ne v2, v3, :cond_b

    .line 412
    invoke-virtual {v1}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v2

    invoke-virtual {v2}, Lannotator/find/Criteria;->getGenericArrayLocation()Lannotator/find/GenericArrayLocationCriterion;

    move-result-object v2

    .line 413
    .local v2, "c":Lannotator/find/GenericArrayLocationCriterion;
    move-object v3, v1

    check-cast v3, Lannotator/find/AnnotationInsertion;

    .line 414
    invoke-virtual {v3}, Lannotator/find/AnnotationInsertion;->getAnnotationText()Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "annos":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 416
    invoke-virtual {v1}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v4

    invoke-virtual {v4}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v4

    .line 417
    .local v4, "astPath":Lscenelib/annotations/io/ASTPath;
    if-eqz p2, :cond_0

    if-eqz v4, :cond_0

    .line 418
    invoke-static {v4, v3, p1, p2}, Lannotator/find/Insertion;->decorateType(Lscenelib/annotations/io/ASTPath;Ljava/lang/String;Lscenelib/type/Type;Lscenelib/annotations/io/ASTPath;)V

    .line 419
    goto :goto_0

    .line 421
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Missing type path."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "innerInsertion":Lannotator/find/Insertion;
    .end local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local p1    # "outerType":Lscenelib/type/Type;
    .end local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    throw v5

    .line 424
    .end local v4    # "astPath":Lscenelib/annotations/io/ASTPath;
    .restart local v1    # "innerInsertion":Lannotator/find/Insertion;
    .restart local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local p1    # "outerType":Lscenelib/type/Type;
    .restart local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    :cond_1
    invoke-virtual {v2}, Lannotator/find/GenericArrayLocationCriterion;->getLocation()Ljava/util/List;

    move-result-object v4

    .line 425
    .local v4, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    move-object v5, p1

    .line 430
    .local v5, "type":Lscenelib/type/Type;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 431
    .local v7, "tpe":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    sget-object v8, Lannotator/find/Insertion$1;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    iget-object v9, v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v9}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v9

    aget v8, v8, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "Incorrect type path."

    packed-switch v8, :pswitch_data_0

    .line 477
    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    goto/16 :goto_3

    .line 464
    :pswitch_0
    invoke-virtual {v5}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v8

    sget-object v10, Lscenelib/type/Type$Kind;->DECLARED:Lscenelib/type/Type$Kind;

    if-ne v8, v10, :cond_3

    .line 465
    move-object v8, v5

    check-cast v8, Lscenelib/type/DeclaredType;

    .line 466
    .local v8, "declaredType":Lscenelib/type/DeclaredType;
    iget v9, v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    if-ltz v9, :cond_2

    iget v9, v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    .line 467
    invoke-virtual {v8}, Lscenelib/type/DeclaredType;->getTypeParameters()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 468
    iget v9, v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-virtual {v8, v9}, Lscenelib/type/DeclaredType;->getTypeParameter(I)Lscenelib/type/Type;

    move-result-object v9

    move-object v5, v9

    .line 472
    .end local v8    # "declaredType":Lscenelib/type/DeclaredType;
    goto/16 :goto_2

    .line 470
    .restart local v8    # "declaredType":Lscenelib/type/DeclaredType;
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incorrect type argument index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "innerInsertion":Lannotator/find/Insertion;
    .end local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local p1    # "outerType":Lscenelib/type/Type;
    .end local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    throw v6

    .line 473
    .end local v8    # "declaredType":Lscenelib/type/DeclaredType;
    .restart local v1    # "innerInsertion":Lannotator/find/Insertion;
    .restart local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local p1    # "outerType":Lscenelib/type/Type;
    .restart local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "innerInsertion":Lannotator/find/Insertion;
    .end local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local p1    # "outerType":Lscenelib/type/Type;
    .end local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    throw v6

    .line 452
    .restart local v1    # "innerInsertion":Lannotator/find/Insertion;
    .restart local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local p1    # "outerType":Lscenelib/type/Type;
    .restart local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    :pswitch_1
    invoke-virtual {v5}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v8

    sget-object v10, Lscenelib/type/Type$Kind;->BOUNDED:Lscenelib/type/Type$Kind;

    if-ne v8, v10, :cond_5

    .line 453
    move-object v8, v5

    check-cast v8, Lscenelib/type/BoundedType;

    .line 454
    .local v8, "boundedType":Lscenelib/type/BoundedType;
    invoke-virtual {v8}, Lscenelib/type/BoundedType;->getBound()Lscenelib/type/Type;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 458
    invoke-virtual {v8}, Lscenelib/type/BoundedType;->getBound()Lscenelib/type/Type;

    move-result-object v9

    move-object v5, v9

    .line 459
    .end local v8    # "boundedType":Lscenelib/type/BoundedType;
    goto :goto_2

    .line 455
    .restart local v8    # "boundedType":Lscenelib/type/BoundedType;
    :cond_4
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v9, "Incorrect type path: expected type bound but none exists."

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "innerInsertion":Lannotator/find/Insertion;
    .end local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local p1    # "outerType":Lscenelib/type/Type;
    .end local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    throw v6

    .line 460
    .end local v8    # "boundedType":Lscenelib/type/BoundedType;
    .restart local v1    # "innerInsertion":Lannotator/find/Insertion;
    .restart local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local p1    # "outerType":Lscenelib/type/Type;
    .restart local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    :cond_5
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "innerInsertion":Lannotator/find/Insertion;
    .end local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local p1    # "outerType":Lscenelib/type/Type;
    .end local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    throw v6

    .line 440
    .restart local v1    # "innerInsertion":Lannotator/find/Insertion;
    .restart local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local p1    # "outerType":Lscenelib/type/Type;
    .restart local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    :pswitch_2
    invoke-virtual {v5}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v8

    sget-object v10, Lscenelib/type/Type$Kind;->DECLARED:Lscenelib/type/Type$Kind;

    if-ne v8, v10, :cond_7

    .line 441
    move-object v8, v5

    check-cast v8, Lscenelib/type/DeclaredType;

    .line 442
    .local v8, "declaredType":Lscenelib/type/DeclaredType;
    invoke-virtual {v8}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 446
    invoke-virtual {v8}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object v9

    move-object v5, v9

    .line 447
    .end local v8    # "declaredType":Lscenelib/type/DeclaredType;
    goto :goto_2

    .line 443
    .restart local v8    # "declaredType":Lscenelib/type/DeclaredType;
    :cond_6
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v9, "Incorrect type path: expected inner type but none exists."

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "innerInsertion":Lannotator/find/Insertion;
    .end local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local p1    # "outerType":Lscenelib/type/Type;
    .end local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    throw v6

    .line 448
    .end local v8    # "declaredType":Lscenelib/type/DeclaredType;
    .restart local v1    # "innerInsertion":Lannotator/find/Insertion;
    .restart local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local p1    # "outerType":Lscenelib/type/Type;
    .restart local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    :cond_7
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "innerInsertion":Lannotator/find/Insertion;
    .end local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local p1    # "outerType":Lscenelib/type/Type;
    .end local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    throw v6

    .line 433
    .restart local v1    # "innerInsertion":Lannotator/find/Insertion;
    .restart local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local p1    # "outerType":Lscenelib/type/Type;
    .restart local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    :pswitch_3
    invoke-virtual {v5}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v8

    sget-object v10, Lscenelib/type/Type$Kind;->ARRAY:Lscenelib/type/Type$Kind;

    if-ne v8, v10, :cond_8

    .line 434
    move-object v8, v5

    check-cast v8, Lscenelib/type/ArrayType;

    invoke-virtual {v8}, Lscenelib/type/ArrayType;->getComponentType()Lscenelib/type/Type;

    move-result-object v8

    move-object v5, v8

    .line 479
    .end local v7    # "tpe":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    :goto_2
    goto/16 :goto_1

    .line 436
    .restart local v7    # "tpe":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    :cond_8
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "innerInsertion":Lannotator/find/Insertion;
    .end local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local p1    # "outerType":Lscenelib/type/Type;
    .end local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    throw v6

    .line 477
    .restart local v1    # "innerInsertion":Lannotator/find/Insertion;
    .restart local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local p1    # "outerType":Lscenelib/type/Type;
    .restart local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal TypePathEntryKind: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "innerInsertion":Lannotator/find/Insertion;
    .end local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local p1    # "outerType":Lscenelib/type/Type;
    .end local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    throw v6

    .line 480
    .end local v7    # "tpe":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    .restart local v1    # "innerInsertion":Lannotator/find/Insertion;
    .restart local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local p1    # "outerType":Lscenelib/type/Type;
    .restart local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    :cond_9
    invoke-virtual {v5}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v6

    sget-object v7, Lscenelib/type/Type$Kind;->BOUNDED:Lscenelib/type/Type$Kind;

    if-ne v6, v7, :cond_a

    .line 482
    move-object v6, v5

    check-cast v6, Lscenelib/type/BoundedType;

    invoke-virtual {v6}, Lscenelib/type/BoundedType;->getName()Lscenelib/type/DeclaredType;

    move-result-object v6

    move-object v5, v6

    .line 484
    :cond_a
    invoke-virtual {v5, v3}, Lscenelib/type/Type;->addAnnotation(Ljava/lang/String;)V

    .line 487
    .end local v2    # "c":Lannotator/find/GenericArrayLocationCriterion;
    .end local v3    # "annos":Ljava/lang/String;
    .end local v4    # "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    .end local v5    # "type":Lscenelib/type/Type;
    goto :goto_4

    .line 409
    :cond_b
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \'ANNOTATION\' insertion kind, got \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 410
    invoke-virtual {v1}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "innerInsertion":Lannotator/find/Insertion;
    .end local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local p1    # "outerType":Lscenelib/type/Type;
    .end local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    .restart local v1    # "innerInsertion":Lannotator/find/Insertion;
    .restart local p0    # "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local p1    # "outerType":Lscenelib/type/Type;
    .restart local p2    # "outerPath":Lscenelib/annotations/io/ASTPath;
    :catchall_0
    move-exception v2

    .line 486
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Lannotator/find/TreeFinder;->reportInsertionError(Lannotator/find/Insertion;Ljava/lang/Throwable;)V

    .line 488
    .end local v1    # "innerInsertion":Lannotator/find/Insertion;
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_4
    goto/16 :goto_0

    .line 489
    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decorateType(Lscenelib/annotations/io/ASTPath;Ljava/lang/String;Lscenelib/type/Type;Lscenelib/annotations/io/ASTPath;)V
    .locals 9
    .param p0, "astPath"    # Lscenelib/annotations/io/ASTPath;
    .param p1, "annos"    # Ljava/lang/String;
    .param p2, "type"    # Lscenelib/type/Type;
    .param p3, "outerPath"    # Lscenelib/annotations/io/ASTPath;

    .line 494
    invoke-virtual {p0}, Lscenelib/annotations/io/ASTPath;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 495
    .local v0, "ii":Ljava/util/Iterator;, "Ljava/util/Iterator<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    invoke-virtual {p3}, Lscenelib/annotations/io/ASTPath;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 497
    .local v1, "oi":Ljava/util/Iterator;, "Ljava/util/Iterator<Lscenelib/annotations/io/ASTPath$ASTEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Incorrect AST path."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 505
    .local v2, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    .line 506
    .local v3, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v4, Lannotator/find/Insertion$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v3}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "Incorrect type path."

    packed-switch v4, :pswitch_data_0

    .line 552
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal TreeKind: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 540
    :pswitch_0
    invoke-virtual {p2}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v4

    sget-object v6, Lscenelib/type/Type$Kind;->BOUNDED:Lscenelib/type/Type$Kind;

    if-ne v4, v6, :cond_3

    .line 541
    move-object v4, p2

    check-cast v4, Lscenelib/type/BoundedType;

    .line 542
    .local v4, "boundedType":Lscenelib/type/BoundedType;
    invoke-virtual {v4}, Lscenelib/type/BoundedType;->getBound()Lscenelib/type/Type;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 546
    invoke-virtual {v4}, Lscenelib/type/BoundedType;->getBound()Lscenelib/type/Type;

    move-result-object p2

    .line 547
    .end local v4    # "boundedType":Lscenelib/type/BoundedType;
    goto/16 :goto_2

    .line 543
    .restart local v4    # "boundedType":Lscenelib/type/BoundedType;
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Incorrect type path: expected type bound but none exists."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 548
    .end local v4    # "boundedType":Lscenelib/type/BoundedType;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 527
    :pswitch_1
    invoke-virtual {p2}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v4

    sget-object v6, Lscenelib/type/Type$Kind;->DECLARED:Lscenelib/type/Type$Kind;

    if-ne v4, v6, :cond_5

    .line 528
    invoke-virtual {v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v4

    .line 529
    .local v4, "arg":I
    move-object v5, p2

    check-cast v5, Lscenelib/type/DeclaredType;

    .line 530
    .local v5, "declaredType":Lscenelib/type/DeclaredType;
    if-ltz v4, :cond_4

    invoke-virtual {v5}, Lscenelib/type/DeclaredType;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 531
    invoke-virtual {v5, v4}, Lscenelib/type/DeclaredType;->getTypeParameter(I)Lscenelib/type/Type;

    move-result-object p2

    .line 535
    .end local v4    # "arg":I
    .end local v5    # "declaredType":Lscenelib/type/DeclaredType;
    goto :goto_2

    .line 533
    .restart local v4    # "arg":I
    .restart local v5    # "declaredType":Lscenelib/type/DeclaredType;
    :cond_4
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect type argument index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 536
    .end local v4    # "arg":I
    .end local v5    # "declaredType":Lscenelib/type/DeclaredType;
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 515
    :pswitch_2
    invoke-virtual {p2}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v4

    sget-object v6, Lscenelib/type/Type$Kind;->DECLARED:Lscenelib/type/Type$Kind;

    if-ne v4, v6, :cond_7

    .line 516
    move-object v4, p2

    check-cast v4, Lscenelib/type/DeclaredType;

    .line 517
    .local v4, "declaredType":Lscenelib/type/DeclaredType;
    invoke-virtual {v4}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 521
    invoke-virtual {v4}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object p2

    .line 522
    .end local v4    # "declaredType":Lscenelib/type/DeclaredType;
    goto :goto_2

    .line 518
    .restart local v4    # "declaredType":Lscenelib/type/DeclaredType;
    :cond_6
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Incorrect type path: expected inner type but none exists."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 523
    .end local v4    # "declaredType":Lscenelib/type/DeclaredType;
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 508
    :pswitch_3
    invoke-virtual {p2}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v4

    sget-object v6, Lscenelib/type/Type$Kind;->ARRAY:Lscenelib/type/Type$Kind;

    if-ne v4, v6, :cond_8

    .line 509
    move-object v4, p2

    check-cast v4, Lscenelib/type/ArrayType;

    invoke-virtual {v4}, Lscenelib/type/ArrayType;->getComponentType()Lscenelib/type/Type;

    move-result-object p2

    .line 554
    .end local v2    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v3    # "kind":Lcom/sun/source/tree/Tree$Kind;
    :goto_2
    goto/16 :goto_1

    .line 511
    .restart local v2    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v3    # "kind":Lcom/sun/source/tree/Tree$Kind;
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 555
    .end local v2    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v3    # "kind":Lcom/sun/source/tree/Tree$Kind;
    :cond_9
    invoke-virtual {p2}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v2

    sget-object v3, Lscenelib/type/Type$Kind;->BOUNDED:Lscenelib/type/Type$Kind;

    if-ne v2, v3, :cond_a

    .line 557
    move-object v2, p2

    check-cast v2, Lscenelib/type/BoundedType;

    invoke-virtual {v2}, Lscenelib/type/BoundedType;->getName()Lscenelib/type/DeclaredType;

    move-result-object p2

    .line 559
    :cond_a
    invoke-virtual {p2, p1}, Lscenelib/type/Type;->addAnnotation(Ljava/lang/String;)V

    .line 560
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAlwaysQualify()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    sget-object v0, Lannotator/find/Insertion;->alwaysQualify:Ljava/util/Set;

    return-object v0
.end method

.method public static removePackage(Ljava/lang/String;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, "nameEnd":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 263
    :cond_0
    const-string v2, "."

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    .line 264
    .local v2, "dotIndex":I
    if-eq v2, v1, :cond_2

    .line 265
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "basename":Ljava/lang/String;
    sget-object v3, Lannotator/find/Insertion;->alwaysQualify:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 267
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v4

    return-object v4

    .line 272
    :cond_1
    invoke-static {v3, v1}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v4

    return-object v4

    .line 276
    .end local v1    # "basename":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, p0}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method public static setAlwaysQualify(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sput-object p0, Lannotator/find/Insertion;->alwaysQualify:Ljava/util/Set;

    .line 207
    return-void
.end method

.method private writeAnnotations(Lscenelib/type/Type;Ljava/lang/StringBuilder;ZZ)V
    .locals 5
    .param p1, "type"    # Lscenelib/type/Type;
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .param p3, "comments"    # Z
    .param p4, "abbreviate"    # Z

    .line 373
    invoke-virtual {p1}, Lscenelib/type/Type;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    .local v1, "annotation":Ljava/lang/String;
    new-instance v2, Lannotator/find/AnnotationInsertion;

    invoke-direct {v2, v1}, Lannotator/find/AnnotationInsertion;-><init>(Ljava/lang/String;)V

    .line 375
    .local v2, "ins":Lannotator/find/AnnotationInsertion;
    invoke-virtual {v2, p3, p4}, Lannotator/find/AnnotationInsertion;->getText(ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    if-eqz p4, :cond_0

    .line 378
    iget-object v3, p0, Lannotator/find/Insertion;->packageNames:Ljava/util/Set;

    invoke-virtual {v2}, Lannotator/find/AnnotationInsertion;->getPackageNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 380
    .end local v1    # "annotation":Ljava/lang/String;
    .end local v2    # "ins":Lannotator/find/AnnotationInsertion;
    :cond_0
    goto :goto_0

    .line 381
    :cond_1
    return-void
.end method


# virtual methods
.method protected addLeadingSpace(ZIC)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z
    .param p2, "pos"    # I
    .param p3, "precedingChar"    # C

    .line 160
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 161
    invoke-static {p3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x28

    if-eq p3, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0
.end method

.method protected addTrailingSpace(Z)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z

    .line 177
    xor-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public getCriteria()Lannotator/find/Criteria;
    .locals 1

    .line 77
    iget-object v0, p0, Lannotator/find/Insertion;->criteria:Lannotator/find/Criteria;

    return-object v0
.end method

.method public abstract getKind()Lannotator/find/Insertion$Kind;
.end method

.method public getPackageNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lannotator/find/Insertion;->packageNames:Ljava/util/Set;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 6

    .line 87
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lannotator/find/Insertion;->getText(ZZZIC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getText(ZZ)Ljava/lang/String;
.end method

.method public getText(ZZZIC)Ljava/lang/String;
    .locals 3
    .param p1, "comments"    # Z
    .param p2, "abbreviate"    # Z
    .param p3, "gotSeparateLine"    # Z
    .param p4, "pos"    # I
    .param p5, "precedingChar"    # C

    .line 114
    invoke-virtual {p0, p1, p2}, Lannotator/find/Insertion;->getText(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "toInsert":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    invoke-virtual {p0, p3, p4, p5}, Lannotator/find/Insertion;->addLeadingSpace(ZIC)Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    invoke-virtual {p0, p3}, Lannotator/find/Insertion;->addTrailingSpace(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_1
    return-object v0
.end method

.method public isInserted()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lannotator/find/Insertion;->inserted:Z

    return v0
.end method

.method public isSeparateLine()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lannotator/find/Insertion;->separateLine:Z

    return v0
.end method

.method public setInserted(Z)V
    .locals 3
    .param p1, "inserted"    # Z

    .line 233
    sget-boolean v0, Lannotator/Main;->temporaryDebug:Z

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lannotator/find/Insertion;->inserted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setInserted(%s) (previously %s) for %s%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 235
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 237
    :cond_0
    iput-boolean p1, p0, Lannotator/find/Insertion;->inserted:Z

    .line 238
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 242
    iget-boolean v0, p0, Lannotator/find/Insertion;->separateLine:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/Insertion;->criteria:Lannotator/find/Criteria;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(nl=%b) @ %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;
    .locals 8
    .param p1, "type"    # Lscenelib/type/Type;
    .param p2, "comments"    # Z
    .param p3, "abbreviate"    # Z

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, "result":Ljava/lang/StringBuilder;
    sget-object v1, Lannotator/find/Insertion$1;->$SwitchMap$scenelib$type$Type$Kind:[I

    invoke-virtual {p1}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lscenelib/type/Type$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x20

    packed-switch v1, :pswitch_data_0

    .line 347
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal kind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :pswitch_0
    move-object v1, p1

    check-cast v1, Lscenelib/type/BoundedType;

    .line 340
    .local v1, "boundedType":Lscenelib/type/BoundedType;
    invoke-virtual {v1}, Lscenelib/type/BoundedType;->getName()Lscenelib/type/DeclaredType;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lannotator/find/Insertion;->typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v1}, Lscenelib/type/BoundedType;->getBoundKind()Lscenelib/type/BoundedType$BoundKind;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v1}, Lscenelib/type/BoundedType;->getBound()Lscenelib/type/Type;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lannotator/find/Insertion;->typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    goto/16 :goto_2

    .line 330
    .end local v1    # "boundedType":Lscenelib/type/BoundedType;
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lscenelib/type/ArrayType;

    .line 331
    .local v1, "arrayType":Lscenelib/type/ArrayType;
    invoke-virtual {v1}, Lscenelib/type/ArrayType;->getComponentType()Lscenelib/type/Type;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lannotator/find/Insertion;->typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Lscenelib/type/ArrayType;->getAnnotations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    :cond_0
    invoke-direct {p0, p1, v0, p2, p3}, Lannotator/find/Insertion;->writeAnnotations(Lscenelib/type/Type;Ljava/lang/StringBuilder;ZZ)V

    .line 336
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    goto/16 :goto_2

    .line 300
    .end local v1    # "arrayType":Lscenelib/type/ArrayType;
    :pswitch_2
    move-object v1, p1

    check-cast v1, Lscenelib/type/DeclaredType;

    .line 301
    .local v1, "declaredType":Lscenelib/type/DeclaredType;
    invoke-virtual {v1}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "typeName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 303
    .local v4, "sep":I
    const/4 v5, 0x0

    if-eqz p3, :cond_1

    .line 304
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 305
    :cond_1
    if-lez v4, :cond_2

    .line 306
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 309
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0, p2, p3}, Lannotator/find/Insertion;->writeAnnotations(Lscenelib/type/Type;Ljava/lang/StringBuilder;ZZ)V

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v1}, Lscenelib/type/DeclaredType;->isWildcard()Z

    move-result v6

    if-nez v6, :cond_6

    .line 312
    invoke-virtual {v1}, Lscenelib/type/DeclaredType;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    .line 313
    .local v6, "typeArguments":Ljava/util/List;, "Ljava/util/List<Lscenelib/type/Type;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 314
    const/16 v7, 0x3c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/type/Type;

    invoke-virtual {p0, v5, p2, p3}, Lannotator/find/Insertion;->typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 317
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/type/Type;

    invoke-virtual {p0, v7, p2, p3}, Lannotator/find/Insertion;->typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 320
    .end local v5    # "i":I
    :cond_3
    const/16 v5, 0x3e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    :cond_4
    invoke-virtual {v1}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object v5

    .line 323
    .local v5, "innerType":Lscenelib/type/Type;
    if-eqz v5, :cond_5

    .line 324
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p0, v5, p2, p3}, Lannotator/find/Insertion;->typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .end local v5    # "innerType":Lscenelib/type/Type;
    .end local v6    # "typeArguments":Ljava/util/List;, "Ljava/util/List<Lscenelib/type/Type;>;"
    :cond_5
    nop

    .line 350
    .end local v1    # "declaredType":Lscenelib/type/DeclaredType;
    .end local v2    # "typeName":Ljava/lang/String;
    .end local v4    # "sep":I
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

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
