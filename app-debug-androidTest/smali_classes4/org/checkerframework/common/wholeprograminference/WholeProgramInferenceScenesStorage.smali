.class public Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;
.super Ljava/lang/Object;
.source "WholeProgramInferenceScenesStorage.java"


# static fields
.field public static final JAIF_FILES_PATH:Ljava/lang/String;


# instance fields
.field private final annosToIgnore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/framework/qual/TypeUseLocation;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ignoreNullAssignments:Z

.field private final modifiedScenes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scenes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "build"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "whole-program-inference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->JAIF_FILES_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "ignoreNullAssignments"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->annosToIgnore:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->scenes:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->modifiedScenes:Ljava/util/Set;

    .line 96
    iput-boolean p1, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->ignoreNullAssignments:Z

    .line 97
    return-void
.end method

.method private addAnnotationsToATypeElement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/qual/TypeUseLocation;Ljavax/lang/model/element/AnnotationMirror;Z)V
    .locals 5
    .param p1, "newATM"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "typeToUpdate"    # Lscenelib/annotations/el/ATypeElement;
    .param p3, "defLoc"    # Lorg/checkerframework/framework/qual/TypeUseLocation;
    .param p4, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p5, "isEffectiveAnnotation"    # Z

    .line 569
    invoke-static {p4}, Lorg/checkerframework/common/wholeprograminference/AnnotationConverter;->annotationMirrorToAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Lscenelib/annotations/Annotation;

    move-result-object v0

    .line 570
    .local v0, "anno":Lscenelib/annotations/Annotation;
    if-eqz v0, :cond_2

    .line 571
    iget-object v1, p2, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    if-nez p5, :cond_0

    invoke-direct {p0, p4, p3, p1}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->shouldIgnore(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 575
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lscenelib/annotations/el/ATypeElement;->description:Ljava/lang/Object;

    .line 576
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "firstKey":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    .line 578
    .local v2, "key":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Lorg/checkerframework/framework/qual/TypeUseLocation;>;"
    iget-object v3, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->annosToIgnore:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 579
    .local v3, "annosIgnored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 580
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    .line 581
    iget-object v4, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->annosToIgnore:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_1
    invoke-virtual {v0}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v4

    invoke-virtual {v4}, Lscenelib/annotations/el/AnnotationDef;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v1    # "firstKey":Ljava/lang/String;
    .end local v2    # "key":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Lorg/checkerframework/framework/qual/TypeUseLocation;>;"
    .end local v3    # "annosIgnored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private getSupportedAnnosInSet(Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Set;
    .locals 8
    .param p2, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation

    .line 437
    .local p1, "annosSet":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 438
    .local v0, "output":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    nop

    .line 439
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v1

    .line 440
    .local v1, "supportedAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/Annotation;

    .line 441
    .local v3, "anno":Lscenelib/annotations/Annotation;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 443
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v7, v7, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 444
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    goto :goto_1

    .line 447
    .end local v3    # "anno":Lscenelib/annotations/Annotation;
    :cond_1
    goto :goto_0

    .line 448
    :cond_2
    return-object v0
.end method

.method private hasMatchingTypeKind(Ljavax/lang/model/type/TypeKind;[Lorg/checkerframework/framework/qual/TypeKind;)Z
    .locals 6
    .param p1, "atmKind"    # Ljavax/lang/model/type/TypeKind;
    .param p2, "types"    # [Lorg/checkerframework/framework/qual/TypeKind;

    .line 423
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 424
    .local v3, "tk":Lorg/checkerframework/framework/qual/TypeKind;
    invoke-virtual {v3}, Lorg/checkerframework/framework/qual/TypeKind;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/lang/model/type/TypeKind;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    const/4 v0, 0x1

    return v0

    .line 423
    .end local v3    # "tk":Lorg/checkerframework/framework/qual/TypeKind;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_1
    return v1
.end method

.method private removeIgnoredAnnosFromATypeElement(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/qual/TypeUseLocation;)V
    .locals 6
    .param p1, "typeEl"    # Lscenelib/annotations/el/ATypeElement;
    .param p2, "loc"    # Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lscenelib/annotations/el/ATypeElement;->description:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "firstKey":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->annosToIgnore:Ljava/util/Map;

    invoke-static {v0, p2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 258
    .local v1, "annosToIgnoreForLocation":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 259
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 260
    .local v2, "annosToRemove":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    iget-object v3, p1, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/Annotation;

    .line 261
    .local v4, "anno":Lscenelib/annotations/Annotation;
    invoke-virtual {v4}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v5

    invoke-virtual {v5}, Lscenelib/annotations/el/AnnotationDef;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v4    # "anno":Lscenelib/annotations/Annotation;
    :cond_0
    goto :goto_0

    .line 265
    :cond_1
    iget-object v3, p1, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 269
    .end local v2    # "annosToRemove":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    :cond_2
    iget-object v2, p1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 270
    iget-object v2, p1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 271
    .local v3, "innerType":Lscenelib/annotations/el/ATypeElement;
    invoke-direct {p0, v3, p2}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->removeIgnoredAnnosFromATypeElement(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 272
    .end local v3    # "innerType":Lscenelib/annotations/el/ATypeElement;
    goto :goto_1

    .line 274
    :cond_3
    return-void
.end method

.method private removeIgnoredAnnosFromScene(Lscenelib/annotations/el/AScene;)V
    .locals 8
    .param p1, "scene"    # Lscenelib/annotations/el/AScene;

    .line 234
    iget-object v0, p1, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AClass;

    .line 235
    .local v1, "aclass":Lscenelib/annotations/el/AClass;
    iget-object v2, v1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AField;

    .line 236
    .local v3, "field":Lscenelib/annotations/el/AField;
    iget-object v4, v3, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    sget-object v5, Lorg/checkerframework/framework/qual/TypeUseLocation;->FIELD:Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-direct {p0, v4, v5}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->removeIgnoredAnnosFromATypeElement(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 237
    .end local v3    # "field":Lscenelib/annotations/el/AField;
    goto :goto_1

    .line 238
    :cond_0
    iget-object v2, v1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AMethod;

    .line 240
    .local v3, "method":Lscenelib/annotations/el/AMethod;
    iget-object v4, v3, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    sget-object v5, Lorg/checkerframework/framework/qual/TypeUseLocation;->RETURN:Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-direct {p0, v4, v5}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->removeIgnoredAnnosFromATypeElement(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 242
    iget-object v4, v3, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v4, v4, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    sget-object v5, Lorg/checkerframework/framework/qual/TypeUseLocation;->RECEIVER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-direct {p0, v4, v5}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->removeIgnoredAnnosFromATypeElement(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 244
    iget-object v4, v3, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/AField;

    .line 245
    .local v5, "param":Lscenelib/annotations/el/AField;
    iget-object v6, v5, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    sget-object v7, Lorg/checkerframework/framework/qual/TypeUseLocation;->PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-direct {p0, v6, v7}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->removeIgnoredAnnosFromATypeElement(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 246
    .end local v5    # "param":Lscenelib/annotations/el/AField;
    goto :goto_3

    .line 247
    .end local v3    # "method":Lscenelib/annotations/el/AMethod;
    :cond_1
    goto :goto_2

    .line 248
    .end local v1    # "aclass":Lscenelib/annotations/el/AClass;
    :cond_2
    goto :goto_0

    .line 249
    :cond_3
    return-void
.end method

.method private shouldIgnore(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 17
    .param p1, "am"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "location"    # Lorg/checkerframework/framework/qual/TypeUseLocation;
    .param p3, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 356
    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 359
    .local v2, "elt":Ljavax/lang/model/element/Element;
    const-class v0, Ljava/lang/annotation/Target;

    invoke-interface {v2, v0}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/annotation/Target;

    .line 360
    .local v3, "target":Ljava/lang/annotation/Target;
    const/4 v0, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    .line 361
    return v0

    .line 363
    :cond_0
    const-class v4, Lorg/checkerframework/framework/qual/InvisibleQualifier;

    invoke-interface {v2, v4}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 364
    return v0

    .line 368
    :cond_1
    const-class v4, Lorg/checkerframework/framework/qual/DefaultQualifierInHierarchy;

    invoke-interface {v2, v4}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 369
    return v0

    .line 371
    :cond_2
    const-class v4, Lorg/checkerframework/framework/qual/DefaultQualifier;

    invoke-interface {v2, v4}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/qual/DefaultQualifier;

    .line 372
    .local v4, "defaultQual":Lorg/checkerframework/framework/qual/DefaultQualifier;
    if-eqz v4, :cond_5

    .line 373
    invoke-interface {v4}, Lorg/checkerframework/framework/qual/DefaultQualifier;->locations()[Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 374
    .local v9, "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    sget-object v10, Lorg/checkerframework/framework/qual/TypeUseLocation;->ALL:Lorg/checkerframework/framework/qual/TypeUseLocation;

    if-eq v9, v10, :cond_4

    if-ne v9, v1, :cond_3

    goto :goto_1

    .line 373
    .end local v9    # "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 375
    .restart local v9    # "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_4
    :goto_1
    return v0

    .line 379
    .end local v9    # "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_5
    const-class v6, Lorg/checkerframework/framework/qual/DefaultFor;

    invoke-interface {v2, v6}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/qual/DefaultFor;

    .line 380
    .local v6, "defaultQualForLocation":Lorg/checkerframework/framework/qual/DefaultFor;
    if-eqz v6, :cond_8

    .line 381
    invoke-interface {v6}, Lorg/checkerframework/framework/qual/DefaultFor;->value()[Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 382
    .local v10, "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    sget-object v11, Lorg/checkerframework/framework/qual/TypeUseLocation;->ALL:Lorg/checkerframework/framework/qual/TypeUseLocation;

    if-eq v10, v11, :cond_7

    if-ne v10, v1, :cond_6

    goto :goto_3

    .line 381
    .end local v10    # "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 383
    .restart local v10    # "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_7
    :goto_3
    return v0

    .line 392
    .end local v10    # "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_8
    const-class v7, Lorg/checkerframework/framework/qual/DefaultFor;

    invoke-interface {v2, v7}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/qual/DefaultFor;

    .line 393
    .local v7, "defaultFor":Lorg/checkerframework/framework/qual/DefaultFor;
    if-eqz v7, :cond_d

    .line 394
    invoke-interface {v7}, Lorg/checkerframework/framework/qual/DefaultFor;->typeKinds()[Lorg/checkerframework/framework/qual/TypeKind;

    move-result-object v8

    .line 395
    .local v8, "types":[Lorg/checkerframework/framework/qual/TypeKind;
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    invoke-interface {v9}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v9

    .line 396
    .local v9, "atmKind":Ljavax/lang/model/type/TypeKind;
    move-object/from16 v10, p0

    invoke-direct {v10, v9, v8}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->hasMatchingTypeKind(Ljavax/lang/model/type/TypeKind;[Lorg/checkerframework/framework/qual/TypeKind;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 397
    return v0

    .line 401
    :cond_9
    :try_start_0
    invoke-interface {v7}, Lorg/checkerframework/framework/qual/DefaultFor;->types()[Ljava/lang/Class;

    move-result-object v11

    .line 402
    .local v11, "names":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v12, v11

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_c

    aget-object v14, v11, v13

    .line 403
    .local v14, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v15

    .line 404
    .local v15, "underlyingtype":Ljavax/lang/model/type/TypeMirror;
    :goto_5
    instance-of v5, v15, Ljavax/lang/model/type/ArrayType;

    if-eqz v5, :cond_a

    .line 405
    move-object v5, v15

    check-cast v5, Ljavax/lang/model/type/ArrayType;

    .line 407
    invoke-interface {v5}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    move-object v15, v5

    goto :goto_5

    .line 409
    :cond_a
    invoke-virtual {v14}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljavax/lang/model/type/MirroredTypesException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_b

    .line 410
    const/4 v0, 0x1

    return v0

    .line 409
    :cond_b
    const/4 v0, 0x1

    .line 402
    .end local v14    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "underlyingtype":Ljavax/lang/model/type/TypeMirror;
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 414
    .end local v11    # "names":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_c
    goto :goto_6

    .line 413
    :catch_0
    move-exception v0

    goto :goto_6

    .line 393
    .end local v8    # "types":[Lorg/checkerframework/framework/qual/TypeKind;
    .end local v9    # "atmKind":Ljavax/lang/model/type/TypeKind;
    :cond_d
    move-object/from16 v10, p0

    .line 417
    :goto_6
    const/4 v5, 0x0

    return v5
.end method

.method private typeElementToATM(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 5
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type"    # Lscenelib/annotations/el/ATypeElement;
    .param p3, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 462
    iget-object v0, p2, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-direct {p0, v0, p3}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getSupportedAnnosInSet(Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Set;

    move-result-object v0

    .line 463
    .local v0, "annos":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/Annotation;

    .line 464
    .local v2, "anno":Lscenelib/annotations/Annotation;
    nop

    .line 465
    invoke-virtual {p3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/common/wholeprograminference/AnnotationConverter;->annotationToAnnotationMirror(Lscenelib/annotations/Annotation;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 466
    .local v3, "am":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 467
    .end local v2    # "anno":Lscenelib/annotations/Annotation;
    .end local v3    # "am":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 469
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 470
    .local v1, "aat":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    iget-object v2, p2, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 471
    .local v3, "innerType":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-direct {p0, v4, v3, p3}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->typeElementToATM(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 472
    .end local v3    # "innerType":Lscenelib/annotations/el/ATypeElement;
    goto :goto_1

    .line 474
    .end local v1    # "aat":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    .line 475
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 476
    .local v1, "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    iget-object v2, p2, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 477
    .restart local v3    # "innerType":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-direct {p0, v4, v3, p3}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->typeElementToATM(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 478
    .end local v3    # "innerType":Lscenelib/annotations/el/ATypeElement;
    goto :goto_2

    .line 480
    .end local v1    # "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    :cond_2
    return-void
.end method

.method private updateTypeElementFromATM(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lscenelib/annotations/el/ATypeElement;ILorg/checkerframework/framework/qual/TypeUseLocation;)V
    .locals 9
    .param p1, "newATM"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "curATM"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p4, "typeToUpdate"    # Lscenelib/annotations/el/ATypeElement;
    .param p5, "idx"    # I
    .param p6, "defLoc"    # Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 512
    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    .line 515
    iget-object v0, p4, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 516
    invoke-direct {p0, v0, p3}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getSupportedAnnosInSet(Ljava/util/Set;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/util/Set;

    move-result-object v0

    .line 521
    .local v0, "annosToRemove":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    iget-object v1, p4, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 525
    .end local v0    # "annosToRemove":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getExplicitAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

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

    .line 527
    .local v1, "am":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 528
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    .line 527
    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p6

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->addAnnotationsToATypeElement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/qual/TypeUseLocation;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 529
    .end local v1    # "am":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 530
    :cond_2
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_4

    .line 535
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 536
    .restart local v1    # "am":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 539
    goto :goto_2

    .line 541
    :cond_3
    nop

    .line 542
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    .line 541
    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p6

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->addAnnotationsToATypeElement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/qual/TypeUseLocation;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 543
    .end local v1    # "am":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 547
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_5

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_5

    .line 548
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 549
    .local v0, "newAAT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 550
    .local v1, "oldAAT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    nop

    .line 551
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 552
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    iget-object v2, p4, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v5, Lscenelib/annotations/el/InnerTypeLocation;

    mul-int/lit8 v6, p5, 0x2

    .line 557
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 556
    invoke-static {v6}, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->getTypePathFromBinary(Ljava/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lscenelib/annotations/el/InnerTypeLocation;-><init>(Ljava/util/List;)V

    .line 554
    invoke-virtual {v2, v5}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lscenelib/annotations/el/ATypeElement;

    add-int/lit8 v7, p5, 0x1

    .line 550
    move-object v2, p0

    move-object v5, p3

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updateTypeElementFromATM(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lscenelib/annotations/el/ATypeElement;ILorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 561
    .end local v0    # "newAAT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .end local v1    # "oldAAT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    :cond_5
    return-void
.end method

.method private updatesATMWithLUB(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 5
    .param p1, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "sourceCodeATM"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "jaifATM"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 291
    sget-object v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 315
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 316
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 313
    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updatesATMWithLUB(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 317
    goto :goto_0

    .line 293
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 295
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 296
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 293
    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updatesATMWithLUB(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 297
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 299
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 300
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 297
    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updatesATMWithLUB(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 301
    nop

    .line 328
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 329
    .local v0, "annosToReplace":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

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

    .line 330
    .local v2, "amSource":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p3, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 333
    .local v3, "amJaif":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_0

    .line 334
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 336
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v2    # "amSource":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "amJaif":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 338
    :cond_1
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 339
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getAClass(Ljava/lang/String;Ljava/lang/String;)Lscenelib/annotations/el/AClass;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "jaifPath"    # Ljava/lang/String;

    .line 180
    invoke-virtual {p0, p2}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getScene(Ljava/lang/String;)Lscenelib/annotations/el/AScene;

    move-result-object v0

    .line 181
    .local v0, "scene":Lscenelib/annotations/el/AScene;
    iget-object v1, v0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1, p1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AClass;

    return-object v1
.end method

.method protected getJaifPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->JAIF_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jaif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "jaifPath":Ljava/lang/String;
    return-object v0
.end method

.method protected getScene(Ljava/lang/String;)Lscenelib/annotations/el/AScene;
    .locals 6
    .param p1, "jaifPath"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->scenes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "jaifFile":Ljava/io/File;
    new-instance v1, Lscenelib/annotations/el/AScene;

    invoke-direct {v1}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 157
    .local v1, "scene":Lscenelib/annotations/el/AScene;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :try_start_0
    invoke-static {p1, v1}, Lscenelib/annotations/io/IndexFileParser;->parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem while reading file in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 166
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 170
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->scenes:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v0    # "jaifFile":Ljava/io/File;
    goto :goto_1

    .line 172
    .end local v1    # "scene":Lscenelib/annotations/el/AScene;
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->scenes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lscenelib/annotations/el/AScene;

    .line 174
    .restart local v1    # "scene":Lscenelib/annotations/el/AScene;
    :goto_1
    return-object v1
.end method

.method protected updateAnnotationSetInScene(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V
    .locals 13
    .param p1, "type"    # Lscenelib/annotations/el/ATypeElement;
    .param p2, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "jaifPath"    # Ljava/lang/String;
    .param p4, "rhsATM"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p5, "lhsATM"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p6, "defLoc"    # Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 209
    move-object v7, p0

    move-object v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    instance-of v0, v9, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;

    if-eqz v0, :cond_0

    iget-boolean v0, v7, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->ignoreNullAssignments:Z

    if-eqz v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    nop

    .line 213
    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v11

    .line 214
    .local v11, "atmFromJaif":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v12, p1

    invoke-direct {p0, v11, p1, p2}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->typeElementToATM(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 215
    invoke-direct {p0, p2, v9, v11}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updatesATMWithLUB(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 216
    instance-of v0, v10, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    if-eqz v0, :cond_1

    .line 217
    move-object v0, v10

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 218
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 221
    .local v0, "upperAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 222
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    return-void

    .line 226
    .end local v0    # "upperAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updateTypeElementFromATM(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lscenelib/annotations/el/ATypeElement;ILorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 227
    iget-object v0, v7, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->modifiedScenes:Ljava/util/Set;

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public writeScenesToJaif()V
    .locals 6

    .line 105
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->JAIF_FILES_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "jaifDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->modifiedScenes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, "jaifPath":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->scenes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AScene;

    invoke-virtual {v3}, Lscenelib/annotations/el/AScene;->clone()Lscenelib/annotations/el/AScene;

    move-result-object v3

    .line 113
    .local v3, "scene":Lscenelib/annotations/el/AScene;
    invoke-direct {p0, v3}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->removeIgnoredAnnosFromScene(Lscenelib/annotations/el/AScene;)V

    .line 114
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 115
    invoke-virtual {v3}, Lscenelib/annotations/el/AScene;->prune()V

    .line 116
    invoke-virtual {v3}, Lscenelib/annotations/el/AScene;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 118
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lscenelib/annotations/io/IndexFileWriter;->write(Lscenelib/annotations/el/AScene;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lscenelib/annotations/el/DefException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v3    # "scene":Lscenelib/annotations/el/AScene;
    :cond_1
    nop

    .line 130
    .end local v2    # "jaifPath":Ljava/lang/String;
    goto :goto_0

    .line 127
    .restart local v2    # "jaifPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Lscenelib/annotations/el/DefException;
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    invoke-direct {v3, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 120
    .end local v1    # "e":Lscenelib/annotations/el/DefException;
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem while reading file in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 125
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "jaifPath":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->modifiedScenes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 132
    return-void
.end method
