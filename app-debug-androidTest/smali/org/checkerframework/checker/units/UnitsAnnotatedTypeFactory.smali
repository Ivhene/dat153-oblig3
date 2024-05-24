.class public Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "UnitsAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;,
        Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;,
        Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsPropagationTreeAnnotator;
    }
.end annotation


# static fields
.field private static final aliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field private static final externalQualsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final unitsRelationsAnnoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lorg/checkerframework/checker/units/qual/UnitsRelations;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field protected final TOP:Ljavax/lang/model/element/AnnotationMirror;

.field protected final mixedUnits:Ljavax/lang/model/element/AnnotationMirror;

.field private unitsRel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/checker/units/UnitsRelations;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lorg/checkerframework/checker/units/qual/UnitsRelations;

    sput-object v0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->unitsRelationsAnnoClass:Ljava/lang/Class;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->externalQualsMap:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->aliasMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V

    .line 56
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/units/qual/MixedUnits;

    .line 57
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->mixedUnits:Ljavax/lang/model/element/AnnotationMirror;

    .line 58
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/units/qual/UnknownUnits;

    .line 59
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->TOP:Ljavax/lang/model/element/AnnotationMirror;

    .line 60
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/units/qual/UnitsBottom;

    .line 61
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 78
    invoke-virtual {p0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->postInit()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;)Ljavax/lang/model/util/Elements;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    .line 52
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;)Ljavax/lang/model/util/Elements;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    .line 52
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;)Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    .line 52
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 52
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->removePrefix(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method private addUnitToExternalQualMap(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 228
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithNoPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 231
    .local v0, "mirror":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->isAliasedAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "unitClassName":Ljava/lang/String;
    sget-object v2, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->externalQualsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v1    # "unitClassName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 240
    :cond_1
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->getBaseUnitAnno(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/Name;

    move-result-object v1

    .line 241
    .local v1, "baseUnitClass":Ljavax/lang/model/element/Name;
    if-eqz v1, :cond_3

    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "baseUnitClassName":Ljava/lang/String;
    sget-object v3, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->externalQualsMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 246
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->loadExternalUnit(Ljava/lang/String;)V

    .line 252
    :cond_2
    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    .line 261
    .end local v1    # "baseUnitClass":Ljavax/lang/model/element/Name;
    .end local v2    # "baseUnitClassName":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->addUnitsRelations(Ljava/lang/Class;)V

    .line 262
    return-void
.end method

.method private addUnitsRelations(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 320
    .local p1, "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 322
    .local v0, "am":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 323
    .local v2, "ama":Ljavax/lang/model/element/AnnotationMirror;
    sget-object v3, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->unitsRelationsAnnoClass:Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    nop

    .line 325
    const-string v3, "value"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "theclassname":Ljava/lang/String;
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->isClassGetName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    :try_start_0
    const-class v5, Lorg/checkerframework/javacutil/AnnotationUtils;

    .line 334
    invoke-static {v5}, Lorg/checkerframework/javacutil/InternalUtils;->getClassLoaderForClass(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v5

    .line 335
    .local v5, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    .local v4, "valueElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 345
    :try_start_1
    const-class v5, Lorg/checkerframework/checker/units/UnitsRelations;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    .local v5, "unitsRelationsClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/checker/units/UnitsRelations;>;"
    nop

    .line 353
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "classname":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->getUnitsRel()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 357
    :try_start_2
    iget-object v7, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->unitsRel:Ljava/util/Map;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    .line 360
    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    .line 361
    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/checker/units/UnitsRelations;

    iget-object v9, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 362
    invoke-interface {v8, v9}, Lorg/checkerframework/checker/units/UnitsRelations;->init(Ljavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/checker/units/UnitsRelations;

    move-result-object v8

    .line 357
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    goto :goto_1

    .line 363
    :catchall_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v7, Lorg/checkerframework/javacutil/BugInCF;

    const-string v8, "Throwable when instantiating UnitsRelations"

    invoke-direct {v7, v8, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 346
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v5    # "unitsRelationsClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/checker/units/UnitsRelations;>;"
    .end local v6    # "classname":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 347
    .local v1, "ex":Ljava/lang/ClassCastException;
    new-instance v5, Lorg/checkerframework/javacutil/UserError;

    const-string v6, "Invalid @UnitsRelations meta-annotation found in %s. @UnitsRelations value %s is not a subclass of org.checkerframework.checker.units.UnitsRelations."

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 336
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .end local v4    # "valueElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 337
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v4

    .line 338
    const-string v5, "Could not load class \'%s\' for field \'value\' in annotation %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Lorg/checkerframework/javacutil/UserError;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 327
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    const-string v4, "Malformed class name \"%s\" should be in ClassGetName format in annotation %s"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 368
    .end local v2    # "ama":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "theclassname":Ljava/lang/String;
    :cond_1
    :goto_1
    goto/16 :goto_0

    .line 369
    :cond_2
    return-void
.end method

.method private getBaseUnitAnno(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/Name;
    .locals 3
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 290
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 292
    .local v1, "metaAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->isUnitsMultiple(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    nop

    .line 296
    const-string v0, "quantity"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 297
    .local v0, "baseUnitAnnoClass":Ljavax/lang/model/element/Name;
    return-object v0

    .line 299
    .end local v0    # "baseUnitAnnoClass":Ljavax/lang/model/element/Name;
    .end local v1    # "metaAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 300
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAliasedAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 267
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 269
    .local v1, "metaAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->isUnitsMultiple(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v0, 0x1

    return v0

    .line 273
    .end local v1    # "metaAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isUnitsMultiple(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "metaAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 310
    const-class v0, Lorg/checkerframework/checker/units/qual/UnitsMultiple;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private loadAllExternalUnits()V
    .locals 7

    .line 181
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "units"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "qualNames":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 183
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 184
    .local v5, "qualName":Ljava/lang/String;
    invoke-static {v5}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->isBinaryName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    invoke-direct {p0, v5}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->loadExternalUnit(Ljava/lang/String;)V

    .line 183
    .end local v5    # "qualName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    .restart local v5    # "qualName":Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    const-string v2, "Malformed qualifier name \"%s\" in -Aunits=%s"

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 193
    .end local v5    # "qualName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "unitsDirs"

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "qualDirectories":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 195
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 196
    .local v5, "directoryName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->loadExternalDirectory(Ljava/lang/String;)V

    .line 195
    .end local v5    # "directoryName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    :cond_2
    return-void
.end method

.method private loadExternalDirectory(Ljava/lang/String;)V
    .locals 3
    .param p1, "directoryName"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->loader:Lorg/checkerframework/framework/type/AnnotationClassLoader;

    .line 217
    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->loadExternalAnnotationClassesFromDirectory(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 219
    .local v0, "annoClassSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 220
    .local v2, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->addUnitToExternalQualMap(Ljava/lang/Class;)V

    .line 221
    .end local v2    # "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

.method private loadExternalUnit(Ljava/lang/String;)V
    .locals 1
    .param p1, "annoName"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->loader:Lorg/checkerframework/framework/type/AnnotationClassLoader;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->loadExternalAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 209
    .local v0, "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->addUnitToExternalQualMap(Ljava/lang/Class;)V

    .line 212
    :cond_0
    return-void
.end method

.method private removePrefix(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 620
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v0, p1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->removePrefix(Ljavax/lang/model/util/Elements;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 8
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 94
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "aname":Ljava/lang/String;
    sget-object v1, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->aliasMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 103
    :cond_0
    const/4 v1, 0x0

    .line 104
    .local v1, "built":Z
    const/4 v2, 0x0

    .line 107
    .local v2, "result":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 109
    .local v4, "metaAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v4}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->isUnitsMultiple(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    nop

    .line 112
    const-string v3, "quantity"

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljavax/lang/model/element/Name;

    move-result-object v3

    .line 115
    .local v3, "baseUnitAnnoClass":Ljavax/lang/model/element/Name;
    const-class v6, Lorg/checkerframework/checker/units/qual/Prefix;

    .line 116
    const-string v7, "prefix"

    invoke-static {v4, v7, v6, v5}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueEnum(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/checker/units/qual/Prefix;

    .line 119
    .local v5, "prefix":Lorg/checkerframework/checker/units/qual/Prefix;
    iget-object v6, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 120
    invoke-static {v6, v3, v5}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->buildAnnoMirrorWithSpecificPrefix(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;Lorg/checkerframework/checker/units/qual/Prefix;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 128
    const/4 v1, 0x1

    .line 129
    goto :goto_1

    .line 131
    .end local v3    # "baseUnitAnnoClass":Ljavax/lang/model/element/Name;
    .end local v4    # "metaAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "prefix":Lorg/checkerframework/checker/units/qual/Prefix;
    :cond_1
    goto :goto_0

    .line 133
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 135
    invoke-static {v2}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->getPrefix(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/units/qual/Prefix;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/checker/units/qual/Prefix;->one:Lorg/checkerframework/checker/units/qual/Prefix;

    if-ne v3, v4, :cond_3

    .line 136
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->removePrefix(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 140
    :cond_3
    sget-object v3, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->aliasMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object v2

    .line 144
    :cond_4
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3
.end method

.method protected createAnnotatedTypeFormatter()Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;
    .locals 2

    .line 86
    new-instance v0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method protected createAnnotationClassLoader()Lorg/checkerframework/framework/type/AnnotationClassLoader;
    .locals 2

    .line 162
    new-instance v0, Lorg/checkerframework/checker/units/UnitsAnnotationClassLoader;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/units/UnitsAnnotationClassLoader;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 3
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 537
    new-instance v0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;

    iget-object v1, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/units/qual/UnitsBottom;

    .line 538
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;-><init>(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 537
    return-object v0
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->getBundledTypeQualifiers([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 171
    .local v0, "qualSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->loadAllExternalUnits()V

    .line 174
    sget-object v1, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->externalQualsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 176
    return-object v0
.end method

.method public createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 375
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v2, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsPropagationTreeAnnotator;

    invoke-direct {v2, p0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsPropagationTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;

    invoke-direct {v2, p0}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 377
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->addStandardLiteralQualifiers()Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsTreeAnnotator;-><init>(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 375
    return-object v0
.end method

.method protected getUnitsRel()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/checker/units/UnitsRelations;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->unitsRel:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->unitsRel:Ljava/util/Map;

    .line 152
    const-class v1, Lorg/checkerframework/checker/units/UnitsRelationsDefault;

    .line 153
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/checker/units/UnitsRelationsDefault;

    invoke-direct {v2}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;-><init>()V

    iget-object v3, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 154
    invoke-virtual {v2, v3}, Lorg/checkerframework/checker/units/UnitsRelationsDefault;->init(Ljavax/annotation/processing/ProcessingEnvironment;)Lorg/checkerframework/checker/units/UnitsRelations;

    move-result-object v2

    .line 152
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->unitsRel:Ljava/util/Map;

    return-object v0
.end method
