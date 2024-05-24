.class public Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;
.super Ljava/lang/Object;
.source "ElementAnnotationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;,
        Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addDeclarationAnnotationsFromElement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V
    .locals 5
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "annotations":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {p0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->innerMostType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 92
    .local v0, "innerType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eq v0, p0, :cond_2

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 94
    .local v2, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.checkerframework"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 99
    .end local v2    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 101
    :cond_2
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 103
    :goto_2
    return-void
.end method

.method private static addWildcardToBoundMap(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Ljava/util/Map;)V
    .locals 2
    .param p0, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p1, "anno"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;",
            ">;)V"
        }
    .end annotation

    .line 317
    .local p2, "wildcardToAnnos":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;>;"
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;

    .line 318
    .local v0, "boundAnnos":Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;
    if-nez v0, :cond_0

    .line 319
    new-instance v1, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;

    invoke-direct {v1, p0}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V

    move-object v0, v1

    .line 320
    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->addAnnotation(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)V

    .line 324
    return-void
.end method

.method static annotateViaTypeAnnoPosition(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)V
    .locals 6
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Collection<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 292
    .local p1, "annos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 294
    .local v0, "wildcardToAnnos":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 295
    .local v2, "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    iget-object v3, v2, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v3, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    .line 296
    const/4 v4, 0x0

    invoke-static {p0, v3, v2, v4}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 297
    .local v3, "target":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_0

    .line 298
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-static {v4, v2, v0}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->addWildcardToBoundMap(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Ljava/util/Map;)V

    goto :goto_1

    .line 300
    :cond_0
    invoke-virtual {v3, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 302
    .end local v2    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .end local v3    # "target":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    goto :goto_0

    .line 304
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;

    .line 305
    .local v2, "wildcardAnnos":Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;
    invoke-virtual {v2}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;->apply()V

    .line 306
    .end local v2    # "wildcardAnnos":Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$WildcardBoundAnnos;
    goto :goto_2

    .line 307
    :cond_2
    return-void
.end method

.method public static applyAllElementAnnotations(Ljava/util/List;Ljava/util/List;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 4
    .param p2, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")V"
        }
    .end annotation

    .line 60
    .local p0, "types":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/Element;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 72
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/Element;

    invoke-static {v1, v2, p2}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 61
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of types and elements don\'t match. types ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64
    const-string v2, ", "

    invoke-static {v2, p0}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ) element ( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    invoke-static {v2, p1}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static contains(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .param p0, "enumValue"    # Ljava/lang/Object;
    .param p1, "expectedValues"    # [Ljava/lang/Object;

    .line 113
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 114
    .local v3, "expected":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    const/4 v0, 0x1

    return v0

    .line 113
    .end local v3    # "expected":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return v1
.end method

.method static getBoundIndexOffset(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)I"
        }
    .end annotation

    .line 361
    .local p0, "upperBoundTypes":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, -0x1

    .local v0, "boundIndexOffset":I
    goto :goto_0

    .line 364
    .end local v0    # "boundIndexOffset":I
    :cond_0
    const/4 v0, 0x0

    .line 367
    .restart local v0    # "boundIndexOffset":I
    :goto_0
    return v0
.end method

.method private static getLocationTypeAAT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/List;Lcom/sun/tools/javac/code/Attribute$TypeCompound;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "anno"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ")",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 570
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 571
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v0, v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v0, v2, :cond_0

    .line 572
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 573
    .local v0, "comptype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->tail(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2, p2, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 575
    .end local v0    # "comptype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    new-instance v0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ElementAnnotationUtil.annotateAAT: invalid location %s for type: %s "

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$1;)V

    throw v0
.end method

.method private static getLocationTypeADT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/List;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 8
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "anno"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .param p3, "isComponentTypeOfArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            "Z)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 456
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 457
    .local v0, "outerToInner":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    move-object v1, p0

    .line 458
    .local v1, "enclosing":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :goto_0
    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 460
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    goto :goto_0

    .line 469
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 471
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 473
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2, v0}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 474
    .local v2, "innerTypes":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 475
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 476
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {v3, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 483
    .end local v2    # "innerTypes":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 484
    .local v2, "tailOfLocations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    const/4 v3, 0x0

    .line 485
    .local v3, "error":Z
    :goto_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 486
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 487
    .local v4, "currentLocation":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    sget-object v5, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$1;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    iget-object v6, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 502
    const/4 v3, 0x1

    goto :goto_3

    .line 492
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 493
    .local v5, "innerType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget v6, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 494
    nop

    .line 495
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v6

    iget v7, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 496
    .local v6, "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {v6, v2}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    return-object v7

    .line 498
    .end local v6    # "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    const/4 v3, 0x1

    .line 499
    goto :goto_3

    .line 489
    .end local v5    # "innerType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 490
    nop

    .line 504
    :goto_3
    if-eqz v3, :cond_3

    .line 505
    goto :goto_4

    .line 507
    .end local v4    # "currentLocation":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    :cond_3
    goto :goto_2

    .line 509
    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v3, :cond_5

    .line 515
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v4

    .line 510
    :cond_5
    new-instance v4, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "ElementAnnotationUtil.getLocationTypeADT: invalid location %s for type: %s"

    invoke-direct {v4, v7, v5, v6}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$1;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLocationTypeAIT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 600
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 601
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v1, v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v1, v2, :cond_0

    .line 602
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget v0, v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 603
    .local v0, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->tail(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 605
    .end local v0    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    new-instance v0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ElementAnnotationUtil.getLocatonTypeAIT: invalid location %s for type: %s "

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$1;)V

    throw v0
.end method

.method private static getLocationTypeANT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 521
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v0, v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v0, v1, :cond_0

    .line 522
    return-object p0

    .line 525
    :cond_0
    new-instance v0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ElementAnnotationUtil.getLocationTypeANT: invalid location %s for type: %s "

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$1;)V

    throw v0
.end method

.method private static getLocationTypeAUT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 592
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 593
    .local v0, "comptype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method private static getLocationTypeAWT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 536
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 537
    return-object p0

    .line 540
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 541
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v0, v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v1, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->WILDCARD:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v0, v1, :cond_3

    .line 542
    invoke-static {p0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->hasExplicitExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->tail(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 544
    :cond_1
    invoke-static {p0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->hasExplicitSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->tail(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 547
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->tail(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 551
    :cond_3
    new-instance v0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ElementAnnotationUtil.getLocationTypeAWT: invalid location %s for type: %s "

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$1;)V

    throw v0
.end method

.method static getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 377
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeAtLocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "anno"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .param p3, "isComponentTypeOfArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            "Z)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 398
    .local p1, "location":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    .line 403
    return-object p0

    .line 405
    :cond_0
    sget-object v0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 427
    :pswitch_0
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getLocationTypeAIT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 425
    :pswitch_1
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getLocationTypeAUT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 423
    :pswitch_2
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getLocationTypeAAT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/List;Lcom/sun/tools/javac/code/Attribute$TypeCompound;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 414
    :pswitch_3
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    return-object p0

    .line 412
    :pswitch_4
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getLocationTypeAWT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 409
    :pswitch_5
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-static {v0, p1, p2, p3}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getLocationTypeADT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/List;Lcom/sun/tools/javac/code/Attribute$TypeCompound;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 407
    :pswitch_6
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->getLocationTypeANT(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/util/List;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 431
    :cond_1
    :goto_0
    new-instance v0, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;

    .line 434
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    filled-new-array {p0, v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ElementAnnotationUtil.getTypeAtLocation: unexpected annotation with location found for type: %s (kind: %s ) location: "

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$1;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static isOnComponentType(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)Z
    .locals 1
    .param p0, "typeCompound"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 337
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v0, v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static varargs partitionByTargetType(Ljava/util/Collection;Ljava/util/List;[Lcom/sun/tools/javac/code/TargetType;)Ljava/util/Map;
    .locals 6
    .param p2, "targetTypes"    # [Lcom/sun/tools/javac/code/TargetType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;[",
            "Lcom/sun/tools/javac/code/TargetType;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sun/tools/javac/code/TargetType;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;>;"
        }
    .end annotation

    .line 136
    .local p0, "annos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    .local p1, "unmatched":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v0, "targetTypeToAnnos":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/tools/javac/code/TargetType;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 138
    .local v3, "targetType":Lcom/sun/tools/javac/code/TargetType;
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v3    # "targetType":Lcom/sun/tools/javac/code/TargetType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 142
    .local v2, "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->getPosition()Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 143
    .local v3, "annoSet":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    if-eqz v3, :cond_1

    .line 144
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 145
    :cond_1
    if-eqz p1, :cond_2

    .line 146
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v2    # "anno":Lcom/sun/tools/javac/code/Attribute$TypeCompound;
    .end local v3    # "annoSet":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    :cond_2
    :goto_2
    goto :goto_1

    .line 150
    :cond_3
    return-object v0
.end method

.method private static tail(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 612
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
