.class public Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
.super Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.source "AnnotatedTypeMirror.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotatedIntersectionType"
.end annotation


# instance fields
.field protected supertypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/lang/model/type/IntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/type/IntersectionType;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 2016
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;-><init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 2017
    return-void
.end method

.method synthetic constructor <init>(Ljavax/lang/model/type/IntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/lang/model/type/IntersectionType;
    .param p2, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "x2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;

    .line 2002
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;-><init>(Ljavax/lang/model/type/IntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

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

    .line 2021
    .local p1, "v":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;->visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .locals 1

    .line 2031
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .locals 1
    .param p1, "copyAnnotations"    # Z

    .line 2026
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;

    invoke-direct {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;-><init>(Z)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 2002
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 0

    .line 2002
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    move-result-object p1

    return-object p1
.end method

.method public directSuperTypes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;"
        }
    .end annotation

    .line 2054
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->supertypes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2055
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/IntersectionType;

    invoke-interface {v0}, Ljavax/lang/model/type/IntersectionType;->getBounds()Ljava/util/List;

    move-result-object v0

    .line 2056
    .local v0, "ubounds":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2057
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    .line 2058
    .local v3, "bnd":Ljavax/lang/model/type/TypeMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2059
    .end local v3    # "bnd":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 2060
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->supertypes:Ljava/util/List;

    .line 2062
    .end local v0    # "ubounds":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->supertypes:Ljava/util/List;

    return-object v0
.end method

.method public directSuperTypesField()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;"
        }
    .end annotation

    .line 2066
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->supertypes:Ljava/util/List;

    return-object v0
.end method

.method setDirectSuperTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;)V"
        }
    .end annotation

    .line 2070
    .local p1, "supertypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->supertypes:Ljava/util/List;

    .line 2071
    return-void
.end method

.method public shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .locals 1

    .line 2047
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    move-result-object v0

    return-object v0
.end method

.method public shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .locals 3
    .param p1, "copyAnnotations"    # Z

    .line 2036
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v1, Ljavax/lang/model/type/IntersectionType;

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;-><init>(Ljavax/lang/model/type/IntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 2038
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    if-eqz p1, :cond_0

    .line 2039
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->getAnnotationsField()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 2041
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->supertypes:Ljava/util/List;

    iput-object v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->supertypes:Ljava/util/List;

    .line 2042
    return-object v0
.end method

.method public bridge synthetic shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 2002
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 0

    .line 2002
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    move-result-object p1

    return-object p1
.end method
