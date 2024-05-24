.class Lorg/checkerframework/framework/util/AtmLubVisitor;
.super Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;
.source "AtmLubVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<",
        "Ljava/lang/Void;",
        "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
        ">;"
    }
.end annotation


# instance fields
.field private final atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private final qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

.field private final visited:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 42
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->visited:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 44
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 45
    return-void
.end method

.method private castLub(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p2, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">(TT;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TT;"
        }
    .end annotation

    .line 133
    .local p1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 139
    move-object v0, p2

    .line 140
    .local v0, "castedLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    return-object v0

    .line 134
    .end local v0    # "castedLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;, "TT;"
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    .line 136
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AtmLubVisitor: unexpected type. Found: %s Required %s"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private lubPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 119
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .local v0, "lubSet":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_0

    .line 121
    .end local v0    # "lubSet":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .restart local v0    # "lubSet":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_0

    .line 124
    .end local v0    # "lubSet":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 126
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBounds(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 128
    .restart local v0    # "lubSet":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_0
    invoke-virtual {p3, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 129
    return-void
.end method

.method private lubPrimaryOnBoundedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 9
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 303
    iget-object v0, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 304
    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v0

    .line 305
    .local v0, "type1LowerBoundAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 306
    invoke-static {v1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v1

    .line 308
    .local v1, "type2LowerBoundAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 309
    .local v3, "lower1":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 313
    .local v4, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v5, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 314
    invoke-virtual {v5, v1, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 315
    .local v5, "lower2":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 316
    .local v6, "upper1":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 318
    .local v7, "upper2":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v8, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v8, v7, v6}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 319
    invoke-virtual {v8, v6, v7}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 320
    invoke-virtual {v8, v3, v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 321
    invoke-virtual {v8, v5, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 322
    goto :goto_0

    .line 325
    :cond_0
    iget-object v8, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v8, v7, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 326
    invoke-virtual {v8, v6, v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 327
    iget-object v8, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v8, v6, v7}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    invoke-virtual {p3, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 329
    .end local v3    # "lower1":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "lower2":Ljavax/lang/model/element/AnnotationMirror;
    .end local v6    # "upper1":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "upper2":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_0

    .line 330
    :cond_2
    return-void
.end method

.method private lubTypeArgument(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 16
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 186
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    iget-object v0, v7, Lorg/checkerframework/framework/util/AtmLubVisitor;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    move-object/from16 v9, p1

    invoke-static {v0, v9, v8}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    .line 187
    .local v10, "type1AsLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v0, v7, Lorg/checkerframework/framework/util/AtmLubVisitor;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    move-object/from16 v11, p2

    invoke-static {v0, v11, v8}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v12

    .line 196
    .local v12, "type2AsLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_3

    .line 197
    invoke-direct {v7, v8}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visited(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    move-object v13, v10

    check-cast v13, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 201
    .local v13, "type1Wildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    move-object v14, v12

    check-cast v14, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 202
    .local v14, "type2Wildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    move-object v15, v8

    check-cast v15, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 203
    .local v15, "lubWildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {v13}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-virtual {v14}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    :cond_1
    invoke-virtual {v15}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setUninferredTypeArgument()V

    .line 207
    :cond_2
    nop

    .line 208
    invoke-virtual {v13}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 209
    invoke-virtual {v13}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 210
    invoke-virtual {v14}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 211
    invoke-virtual {v14}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 212
    invoke-virtual {v15}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 213
    invoke-virtual {v15}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    .line 207
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 214
    .end local v13    # "type1Wildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .end local v14    # "type2Wildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .end local v15    # "lubWildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    goto :goto_0

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_5

    .line 215
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    invoke-direct {v7, v8}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visited(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    return-void

    .line 219
    :cond_4
    move-object v13, v10

    check-cast v13, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 220
    .local v13, "type1typevar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    move-object v14, v12

    check-cast v14, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 221
    .local v14, "type2typevar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    move-object v15, v8

    check-cast v15, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 222
    .local v15, "lubTypevar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    nop

    .line 223
    invoke-virtual {v13}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 224
    invoke-virtual {v13}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 225
    invoke-virtual {v14}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 226
    invoke-virtual {v14}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 227
    invoke-virtual {v15}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 228
    invoke-virtual {v15}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    .line 222
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 229
    .end local v13    # "type1typevar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v14    # "type2typevar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v15    # "lubTypevar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 232
    :cond_5
    invoke-virtual {v7, v10, v12, v8}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :goto_0
    return-void
.end method

.method private lubWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 5
    .param p1, "type1LowerBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type1UpperBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "type2LowerBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "type2UpperBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p5, "lubLowerBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p6, "lubUpperBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 243
    invoke-virtual {p0, p2, p4, p6}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {p0, p1, p3, p5}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

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

    .line 247
    .local v1, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 251
    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 252
    invoke-virtual {p3, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 248
    invoke-virtual {v2, p1, p3, v3, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 253
    .local v2, "glb":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p5, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 256
    .end local v1    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "glb":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    return-void
.end method

.method private lubWithNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 7
    .param p1, "nullType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "otherType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 74
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .local v0, "otherAsLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 77
    .end local v0    # "otherAsLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v0, p2, p3}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 80
    .restart local v0    # "otherAsLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p3

    .line 82
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_2

    .line 83
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 84
    .local v2, "nullAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 85
    .local v3, "otherAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v4, v2, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 86
    .local v4, "lubAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 87
    .end local v2    # "nullAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "otherAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "lubAnno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 88
    :cond_1
    return-object p3

    .line 95
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 96
    invoke-static {v1, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v1

    .line 97
    .local v1, "lowerBounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 98
    .local v3, "lowerBound":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 99
    .local v4, "nullAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 100
    .local v5, "upperBound":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v6, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v6, v5, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    invoke-virtual {p3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_3

    .line 103
    :cond_3
    iget-object v6, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v6, v3, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 104
    invoke-virtual {v6, v4, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 106
    invoke-virtual {p3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 108
    .end local v3    # "lowerBound":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "nullAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "upperBound":Ljavax/lang/model/element/AnnotationMirror;
    :cond_4
    :goto_3
    goto :goto_2

    .line 109
    :cond_5
    return-object p3
.end method

.method private visited(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 2
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 376
    iget-object v0, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->visited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 380
    .local v1, "atmVisit":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-ne v1, p1, :cond_0

    .line 381
    const/4 v0, 0x1

    return v0

    .line 383
    .end local v1    # "atmVisit":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->visited:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected bridge synthetic defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 31
    check-cast p3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 364
    nop

    .line 367
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    filled-new-array {v0, v1, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v0

    .line 364
    const-string v1, "AtmLubVisitor: Unexpected combination: type1: %s type2: %s.\ntype1: %s\ntype2: %s\nlub: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method lub(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "lubJavaType"    # Ljavax/lang/model/type/TypeMirror;

    .line 54
    iget-object v0, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 56
    .local v0, "lub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 57
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;

    invoke-direct {p0, v1, p2, v0}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubWithNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 60
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;

    invoke-direct {p0, v1, p1, v0}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubWithNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 63
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v1, p1, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 64
    .local v1, "type1AsLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v2, p2, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 66
    .local v2, "type2AsLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v1, v2, v0}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v3, p0, Lorg/checkerframework/framework/util/AtmLubVisitor;->visited:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 68
    return-object v0
.end method

.method public bridge synthetic visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 4
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p3, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 155
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->castLub(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 156
    .local v0, "lubArray":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 158
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 6
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 165
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->castLub(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 167
    .local v0, "castedLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, "lubTypArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 170
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 171
    .local v3, "type1TypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 172
    .local v4, "type2TypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 173
    .local v5, "lubTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v3, v4, v5}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubTypeArgument(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 169
    .end local v3    # "type1TypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "type2TypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "lubTypeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "i":I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setTypeArguments(Ljava/util/List;)V

    .line 178
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 5
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 337
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->castLub(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 338
    .local v0, "castedLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 340
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->directSuperTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 341
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 342
    .local v2, "lubST":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, v3, v4, v2}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .end local v2    # "lubST":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p3, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 147
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->castLub(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 263
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->castLub(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 264
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 5
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "lub1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 271
    invoke-direct {p0, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visited(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 272
    return-object v1

    .line 275
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->castLub(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 276
    .local v0, "lub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubPrimaryOnBoundedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 281
    return-object v1
.end method

.method public bridge synthetic visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 5
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p3, "lub"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 351
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->castLub(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    .line 352
    .local v0, "castedLub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 355
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 356
    .local v2, "lubAltern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, v3, v4, v2}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .end local v2    # "lubAltern":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 5
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "lub1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 287
    invoke-direct {p0, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visited(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 288
    return-object v1

    .line 290
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/framework/util/AtmLubVisitor;->castLub(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 291
    .local v0, "lub":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/checkerframework/framework/util/AtmLubVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/util/AtmLubVisitor;->lubPrimaryOnBoundedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 295
    return-object v1
.end method
