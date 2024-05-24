.class public abstract Lorg/checkerframework/framework/flow/CFAbstractValue;
.super Ljava/lang/Object;
.source "CFAbstractValue.java"

# interfaces
.implements Lorg/checkerframework/dataflow/analysis/AbstractValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/flow/CFAbstractValue$AnnotationSetAndTypeMirrorVisitor;,
        Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;,
        Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;**>;"
        }
    .end annotation
.end field

.field protected final annotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field protected final underlyingType:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)V
    .locals 3
    .param p3, "underlyingType"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;**>;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;**>;"
    .local p2, "annotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 62
    iput-object p2, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->annotations:Ljava/util/Set;

    .line 63
    iput-object p3, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->underlyingType:Ljavax/lang/model/type/TypeMirror;

    .line 65
    nop

    .line 66
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v2

    .line 65
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->validateSet(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/QualifierHierarchy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " annotations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string v2, ", "

    invoke-static {v2, p2}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic access$000(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1
    .param p0, "x0"    # Ljavax/lang/model/type/TypeMirror;

    .line 49
    invoke-static {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->canBeMissingAnnotations(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/checkerframework/framework/flow/CFAbstractValue;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/flow/CFAbstractValue;
    .param p1, "x1"    # Ljavax/lang/model/type/TypeMirror;

    .line 49
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getEffectTypeVar(Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v0

    return-object v0
.end method

.method private static canBeMissingAnnotations(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 4
    .param p0, "typeMirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 106
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 107
    return v0

    .line 109
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    .line 110
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_4

    .line 111
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->PACKAGE:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    .line 115
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/WildcardType;

    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->canBeMissingAnnotations(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    return v0

    .line 117
    :cond_2
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_3

    move v0, v3

    :cond_3
    return v0

    .line 112
    :cond_4
    :goto_0
    return v3
.end method

.method private getEffectTypeVar(Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .locals 3
    .param p1, "typeMirror"    # Ljavax/lang/model/type/TypeMirror;

    .line 473
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 474
    return-object v0

    .line 475
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 476
    move-object v0, p1

    check-cast v0, Ljavax/lang/model/type/WildcardType;

    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getEffectTypeVar(Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v0

    return-object v0

    .line 478
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    .line 479
    move-object v0, p1

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 480
    .local v0, "typevar":Ljavax/lang/model/type/TypeVariable;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 481
    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 482
    .local v1, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    return-object v2

    .line 484
    .end local v0    # "typevar":Ljavax/lang/model/type/TypeVariable;
    .end local v1    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    return-object v0
.end method

.method private upperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 13
    .param p2, "shouldWiden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)TV;"
        }
    .end annotation

    .line 323
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    .local p1, "other":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-nez p1, :cond_0

    .line 325
    move-object v0, p0

    .line 326
    .local v0, "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    return-object v0

    .line 328
    .end local v0    # "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 329
    .local v0, "processingEnv":Ljavax/annotation/processing/ProcessingEnvironment;
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v10

    .line 330
    .local v10, "lub":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 332
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 331
    invoke-static {v1, v2, v0}, Lorg/checkerframework/javacutil/TypesUtils;->leastUpperBound(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    .line 334
    .local v11, "lubTypeMirror":Ljavax/lang/model/type/TypeMirror;
    new-instance v12, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;

    .line 337
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 338
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 339
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v6

    .line 340
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v7

    move-object v1, v12

    move-object v2, p0

    move-object v3, v11

    move-object v8, v10

    move v9, p2

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;-><init>(Lorg/checkerframework/framework/flow/CFAbstractValue;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 343
    .local v1, "lubVisitor":Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.LubVisitor;"
    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractValue$LubVisitor;->visit()V

    .line 344
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v2, v10, v11}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    return-object v2
.end method

.method public static validateSet(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/QualifierHierarchy;)Z
    .locals 5
    .param p1, "typeMirror"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "hierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Lorg/checkerframework/framework/type/QualifierHierarchy;",
            ")Z"
        }
    .end annotation

    .line 78
    .local p0, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->canBeMissingAnnotations(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 79
    return v1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 83
    .local v0, "missingHierarchy":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 84
    .local v3, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, p0, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 85
    .local v4, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v4, :cond_2

    .line 86
    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 89
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v3    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    goto :goto_0

    .line 93
    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public canBeMissingAnnotations()Z
    .locals 1

    .line 102
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->underlyingType:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->canBeMissingAnnotations(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 141
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    instance-of v0, p1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 142
    return v1

    .line 145
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 146
    .local v0, "other":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 147
    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypes()Ljavax/lang/model/util/Types;

    move-result-object v2

    .line 148
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    return v1

    .line 151
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public getAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 131
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->annotations:Ljava/util/Set;

    return-object v0
.end method

.method public getUnderlyingType()Ljavax/lang/model/type/TypeMirror;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 136
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->underlyingType:Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 157
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->underlyingType:Ljavax/lang/model/type/TypeMirror;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/dataflow/analysis/AbstractValue;)Lorg/checkerframework/dataflow/analysis/AbstractValue;
    .locals 0

    .line 49
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    check-cast p1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object p1

    return-object p1
.end method

.method public leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    .local p1, "other":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->upperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    return-object v0
.end method

.method public mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)TV;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    .local p1, "other":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .local p2, "backup":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-nez p1, :cond_0

    .line 184
    move-object v0, p0

    .line 185
    .local v0, "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    return-object v0

    .line 187
    .end local v0    # "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypes()Ljavax/lang/model/util/Types;

    move-result-object v0

    .line 189
    .local v0, "types":Ljavax/lang/model/util/Types;
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .local v1, "mostSpecifTypeMirror":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 191
    .end local v1    # "mostSpecifTypeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .restart local v1    # "mostSpecifTypeMirror":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 193
    .end local v1    # "mostSpecifTypeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_2
    nop

    .line 194
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 193
    invoke-static {v1, v2, v0}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .restart local v1    # "mostSpecifTypeMirror":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 196
    .end local v1    # "mostSpecifTypeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_3
    nop

    .line 197
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 196
    invoke-static {v1, v2, v0}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .restart local v1    # "mostSpecifTypeMirror":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 200
    .end local v1    # "mostSpecifTypeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_4
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 203
    .restart local v1    # "mostSpecifTypeMirror":Ljavax/lang/model/type/TypeMirror;
    :goto_0
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v11

    .line 204
    .local v11, "mostSpecific":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    new-instance v12, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;

    .line 207
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 208
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    .line 209
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v7

    .line 210
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v8

    move-object v2, v12

    move-object v3, p0

    move-object v4, v1

    move-object v9, p2

    move-object v10, v11

    invoke-direct/range {v2 .. v10}, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;-><init>(Lorg/checkerframework/framework/flow/CFAbstractValue;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;Ljava/util/Set;Lorg/checkerframework/framework/flow/CFAbstractValue;Ljava/util/Set;)V

    .line 213
    .local v2, "ms":Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>.MostSpecificVisitor;"
    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->visit()V

    .line 214
    iget-boolean v3, v2, Lorg/checkerframework/framework/flow/CFAbstractValue$MostSpecificVisitor;->error:Z

    if-eqz v3, :cond_5

    .line 215
    return-object p2

    .line 217
    :cond_5
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v3, v11, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 164
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFAbstractValue{annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->annotations:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", underlyingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractValue;->underlyingType:Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widenUpperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 319
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractValue;, "Lorg/checkerframework/framework/flow/CFAbstractValue<TV;>;"
    .local p1, "other":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/flow/CFAbstractValue;->upperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    return-object v0
.end method
