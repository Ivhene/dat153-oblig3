.class public Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
.super Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.source "AnnotatedTypeMirror.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotatedTypeVariable"
.end annotation


# instance fields
.field private declaration:Z

.field private inUpperBounds:Z

.field private lowerBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

.field private upperBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;


# direct methods
.method private constructor <init>(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)V
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "declaration"    # Z

    .line 1383
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;-><init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 1586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->inUpperBounds:Z

    .line 1384
    iput-boolean p3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->declaration:Z

    .line 1385
    return-void
.end method

.method synthetic constructor <init>(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;ZLorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;

    .line 1379
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;-><init>(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)V

    return-void
.end method

.method private fixupBoundAnnotations()V
    .locals 2

    .line 1497
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotationsField()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1498
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotationsField()Ljava/util/Set;

    move-result-object v0

    .line 1499
    .local v0, "newAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->upperBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-eqz v1, :cond_0

    .line 1500
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->replaceUpperBoundAnnotations(Ljava/util/Collection;)V

    .line 1510
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->lowerBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-eqz v1, :cond_1

    .line 1511
    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 1514
    .end local v0    # "newAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_1
    return-void
.end method

.method private replaceUpperBoundAnnotations(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 1522
    .local p1, "newAnnos":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->upperBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 1523
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->upperBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 1524
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    .line 1525
    .local v0, "bounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1526
    .local v2, "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 1527
    .end local v2    # "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_0

    .line 1528
    .end local v0    # "bounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    :cond_0
    goto :goto_1

    .line 1529
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->upperBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 1531
    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1430
    .local p1, "v":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 0
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1402
    invoke-super {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1403
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->fixupBoundAnnotations()V

    .line 1404
    return-void
.end method

.method public asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .locals 2

    .line 1418
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->isDeclaration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1419
    return-object p0

    .line 1422
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v0

    .line 1423
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->declaration:Z

    .line 1425
    return-object v0
.end method

.method public bridge synthetic asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1379
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .locals 1

    .line 1595
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .locals 1
    .param p1, "copyAnnotations"    # Z

    .line 1590
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;

    invoke-direct {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;-><init>(Z)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1379
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 0

    .line 1379
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object p1

    return-object p1
.end method

.method public getBoundFields()Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;
    .locals 3

    .line 1582
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v0
.end method

.method public getBounds()Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;
    .locals 3

    .line 1578
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v0
.end method

.method public getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1643
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1473
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->lowerBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-nez v0, :cond_0

    .line 1474
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 1475
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->fixupBoundAnnotations()V

    .line 1477
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->lowerBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public getLowerBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1468
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->lowerBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public bridge synthetic getUnderlyingType()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 1379
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlyingType()Ljavax/lang/model/type/TypeVariable;
    .locals 1

    .line 1435
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    return-object v0
.end method

.method public getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1570
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->upperBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-nez v0, :cond_0

    .line 1571
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 1572
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->fixupBoundAnnotations()V

    .line 1574
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->upperBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public getUpperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1559
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->upperBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public isDeclaration()Z
    .locals 1

    .line 1397
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->declaration:Z

    return v0
.end method

.method public setDeclaration(Z)V
    .locals 0
    .param p1, "declaration"    # Z

    .line 1413
    iput-boolean p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->declaration:Z

    .line 1414
    return-void
.end method

.method setLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1448
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isDeclaration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    iput-object p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->lowerBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1457
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->fixupBoundAnnotations()V

    .line 1458
    return-void

    .line 1449
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lower bounds should never be null or a declaration.\n  new bound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1539
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isDeclaration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1547
    iput-object p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->upperBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1548
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->fixupBoundAnnotations()V

    .line 1549
    return-void

    .line 1540
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upper bounds should never be null or a declaration.\n  new bound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .locals 1

    .line 1623
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .locals 4
    .param p1, "copyAnnotations"    # Z

    .line 1600
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v1, Ljavax/lang/model/type/TypeVariable;

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->declaration:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;-><init>(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)V

    .line 1604
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    if-eqz p1, :cond_0

    .line 1605
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotationsField()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->addAnnotations(Ljava/lang/Iterable;)V

    .line 1608
    :cond_0
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->inUpperBounds:Z

    if-nez v1, :cond_1

    .line 1609
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->inUpperBounds:Z

    .line 1610
    iput-boolean v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->inUpperBounds:Z

    .line 1611
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1612
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->inUpperBounds:Z

    .line 1613
    iput-boolean v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->inUpperBounds:Z

    .line 1616
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1618
    return-object v0
.end method

.method public bridge synthetic shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1379
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 0

    .line 1379
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object p1

    return-object p1
.end method
