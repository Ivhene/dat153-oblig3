.class public Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
.super Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.source "AnnotatedTypeMirror.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotatedWildcardType"
.end annotation


# instance fields
.field private extendsBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

.field private superBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

.field private typeVariable:Ljavax/lang/model/type/TypeVariable;

.field private uninferredTypeArgument:Z


# direct methods
.method private constructor <init>(Ljavax/lang/model/type/WildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/type/WildcardType;
    .param p2, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 1812
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;-><init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 1809
    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->typeVariable:Ljavax/lang/model/type/TypeVariable;

    .line 1979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->uninferredTypeArgument:Z

    .line 1813
    return-void
.end method

.method synthetic constructor <init>(Ljavax/lang/model/type/WildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/lang/model/type/WildcardType;
    .param p2, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "x2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;

    .line 1798
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;-><init>(Ljavax/lang/model/type/WildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-void
.end method

.method private fixupBoundAnnotations()V
    .locals 2

    .line 1890
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getAnnotationsField()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1891
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->superBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-eqz v0, :cond_0

    .line 1892
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getAnnotationsField()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 1894
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->extendsBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-eqz v0, :cond_1

    .line 1895
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getAnnotationsField()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 1898
    :cond_1
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

    .line 1928
    .local p1, "v":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 0
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1817
    invoke-super {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1818
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->fixupBoundAnnotations()V

    .line 1819
    return-void
.end method

.method public deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .locals 1

    .line 1943
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .locals 1
    .param p1, "copyAnnotations"    # Z

    .line 1938
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;

    invoke-direct {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;-><init>(Z)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1798
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 0

    .line 1798
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    move-result-object p1

    return-object p1
.end method

.method public getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1974
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1882
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->extendsBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-nez v0, :cond_0

    .line 1883
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V

    .line 1884
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->fixupBoundAnnotations()V

    .line 1886
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->extendsBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public getExtendsBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1874
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->extendsBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1848
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->superBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-nez v0, :cond_0

    .line 1849
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V

    .line 1850
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->fixupBoundAnnotations()V

    .line 1852
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->superBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public getSuperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1840
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->superBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public getTypeVariable()Ljavax/lang/model/type/TypeVariable;
    .locals 1

    .line 1923
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->typeVariable:Ljavax/lang/model/type/TypeVariable;

    return-object v0
.end method

.method public bridge synthetic getUnderlyingType()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 1798
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlyingType()Ljavax/lang/model/type/WildcardType;
    .locals 1

    .line 1933
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/WildcardType;

    return-object v0
.end method

.method public isUninferredTypeArgument()Z
    .locals 1

    .line 1998
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->uninferredTypeArgument:Z

    return v0
.end method

.method setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1861
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isDeclaration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1869
    iput-object p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->extendsBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1870
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->fixupBoundAnnotations()V

    .line 1871
    return-void

    .line 1862
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extends bounds should never be null or a declaration.\n  new bound = "

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

.method setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1827
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isDeclaration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1835
    iput-object p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->superBound:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1836
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->fixupBoundAnnotations()V

    .line 1837
    return-void

    .line 1828
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Super bounds should never be null or a declaration.\n  new bound = "

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

.method setTypeVariable(Ljavax/lang/model/element/TypeParameterElement;)V
    .locals 1
    .param p1, "typeParameterElement"    # Ljavax/lang/model/element/TypeParameterElement;

    .line 1905
    invoke-interface {p1}, Ljavax/lang/model/element/TypeParameterElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->typeVariable:Ljavax/lang/model/type/TypeVariable;

    .line 1906
    return-void
.end method

.method setTypeVariable(Ljavax/lang/model/type/TypeVariable;)V
    .locals 0
    .param p1, "typeVariable"    # Ljavax/lang/model/type/TypeVariable;

    .line 1913
    iput-object p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->typeVariable:Ljavax/lang/model/type/TypeVariable;

    .line 1914
    return-void
.end method

.method public setUninferredTypeArgument()V
    .locals 1

    .line 1987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->uninferredTypeArgument:Z

    .line 1988
    return-void
.end method

.method public shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .locals 1

    .line 1964
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    move-result-object v0

    return-object v0
.end method

.method public shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .locals 3
    .param p1, "copyAnnotations"    # Z

    .line 1948
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v1, Ljavax/lang/model/type/WildcardType;

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;-><init>(Ljavax/lang/model/type/WildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 1950
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1951
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1952
    if-eqz p1, :cond_0

    .line 1953
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getAnnotationsField()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 1956
    :cond_0
    iget-boolean v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->uninferredTypeArgument:Z

    iput-boolean v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->uninferredTypeArgument:Z

    .line 1957
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->typeVariable:Ljavax/lang/model/type/TypeVariable;

    iput-object v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->typeVariable:Ljavax/lang/model/type/TypeVariable;

    .line 1959
    return-object v0
.end method

.method public bridge synthetic shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1798
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 0

    .line 1798
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    move-result-object p1

    return-object p1
.end method
