.class public Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
.super Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.source "AnnotatedTypeMirror.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotatedDeclaredType"
.end annotation


# instance fields
.field private declaration:Z

.field protected enclosingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

.field protected typeArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private wasRaw:Z


# direct methods
.method private constructor <init>(Ljavax/lang/model/type/DeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)V
    .locals 6
    .param p1, "type"    # Ljavax/lang/model/type/DeclaredType;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "declaration"    # Z

    .line 838
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;-><init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 839
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 840
    .local v0, "typeelem":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    .line 841
    .local v1, "declty":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw:Z

    .line 843
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getEnclosingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 844
    .local v2, "encl":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_1

    .line 845
    nop

    .line 846
    invoke-static {v2, p2, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    iput-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->enclosingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    goto :goto_1

    .line 847
    :cond_1
    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_2

    .line 856
    :goto_1
    iput-boolean p3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->declaration:Z

    .line 857
    return-void

    .line 848
    :cond_2
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnnotatedDeclaredType: unsupported enclosing type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 850
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getEnclosingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 852
    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method synthetic constructor <init>(Ljavax/lang/model/type/DeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;ZLorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/lang/model/type/DeclaredType;
    .param p2, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;

    .line 810
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;-><init>(Ljavax/lang/model/type/DeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)V

    return-void
.end method

.method static synthetic access$1002(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p1, "x1"    # Z

    .line 810
    iput-boolean p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->declaration:Z

    return p1
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

    .line 889
    .local p1, "v":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 2

    .line 876
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->isDeclaration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    return-object p0

    .line 879
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 880
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->declaration:Z

    .line 882
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setTypeArguments(Ljava/util/List;)V

    .line 884
    return-object v0
.end method

.method public bridge synthetic asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 810
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1

    .line 871
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1
    .param p1, "copyAnnotations"    # Z

    .line 866
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;

    invoke-direct {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;-><init>(Z)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 810
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 0

    .line 810
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object p1

    return-object p1
.end method

.method public directSuperTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;"
        }
    .end annotation

    .line 970
    invoke-static {p0}, Lorg/checkerframework/framework/type/SupertypeFinder;->directSuperTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1

    .line 1040
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->enclosingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    return-object v0
.end method

.method public getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 3

    .line 1000
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->actualType:Ljavax/lang/model/type/TypeMirror;

    .line 1005
    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->declaration:Z

    .line 1004
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1008
    .local v0, "rType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->annotations:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 1009
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setTypeArguments(Ljava/util/List;)V

    .line 1010
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    return-object v1

    .line 1012
    .end local v0    # "rType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1013
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_1

    .line 1018
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 1019
    .restart local v0    # "rType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 1020
    .local v1, "et":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setEnclosingType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 1021
    return-object v0

    .line 1025
    .end local v0    # "rType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v1    # "et":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 810
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 918
    return-object v0

    .line 919
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 921
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 924
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 925
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 926
    .local v0, "declaration":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 927
    nop

    .line 928
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 929
    .local v2, "typeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    iget-object v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 930
    .local v3, "wct":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    iget-object v5, v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 931
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    iget-object v5, v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 932
    iget-object v4, v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->annotations:Ljava/util/Set;

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 926
    .end local v2    # "typeParam":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v3    # "wct":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 934
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    return-object v1

    .line 935
    .end local v0    # "declaration":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 936
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    .line 937
    return-object v0

    .line 940
    :cond_3
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 941
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    return-object v0
.end method

.method public getUnderlyingType()Ljavax/lang/model/type/DeclaredType;
    .locals 1

    .line 965
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    return-object v0
.end method

.method public bridge synthetic getUnderlyingType()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 810
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public isDeclaration()Z
    .locals 1

    .line 861
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->declaration:Z

    return v0
.end method

.method setEnclosingType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V
    .locals 0
    .param p1, "enclosingType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1031
    iput-object p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->enclosingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 1032
    return-void
.end method

.method public setTypeArguments(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 899
    .local p1, "ts":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 902
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->isDeclaration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    goto :goto_2

    .line 906
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v0, "uses":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 908
    .local v2, "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    .end local v2    # "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 910
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    goto :goto_2

    .line 900
    .end local v0    # "uses":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    .line 913
    :goto_2
    return-void
.end method

.method protected setWasRaw()V
    .locals 1

    .line 960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw:Z

    .line 961
    return-void
.end method

.method public shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1

    .line 975
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 4
    .param p1, "copyAnnotations"    # Z

    .line 980
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 981
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v3, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->declaration:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;-><init>(Ljavax/lang/model/type/DeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)V

    .line 982
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-eqz p1, :cond_0

    .line 983
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotationsField()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 985
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setEnclosingType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 986
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setTypeArguments(Ljava/util/List;)V

    .line 987
    return-object v0
.end method

.method public bridge synthetic shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 810
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 0

    .line 810
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object p1

    return-object p1
.end method

.method public wasRaw()Z
    .locals 1

    .line 952
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw:Z

    return v0
.end method
